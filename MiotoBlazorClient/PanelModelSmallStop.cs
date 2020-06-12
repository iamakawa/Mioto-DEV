﻿using MiotoServer.Struct;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MiotoBlazorClient
{
    public class PanelModelSmallStop : PanelModel
    {
        const double smallStopLowerLimitSec = 5*60;
        public List<CycleTime> listSmallStop = new List<CycleTime>();

        public override void updateCycleTime(CycleTime ct)
        {
            base.updateCycleTime(ct);

            if (
                (ct.ct01 > smallStopLowerLimitSec) &&
                (this.listProductionFactor
                    .Where(q=>q.status == MiotoServer.DB.ProductionFactor.Status.START_PRODUCTION)
                    .Where(q => q.isInnerTimeRange(ct) == true).Count() > 0)
                )
            {
                listSmallStop.Add(ct);
                listSmallStop = listSmallStop
                    .OrderByDescending(q => q.ct01)
                    .Take(10).ToList();
            }
        }

        public static new PanelModel Create()
        {
            return new PanelModelSmallStop();
        }
    }
}
