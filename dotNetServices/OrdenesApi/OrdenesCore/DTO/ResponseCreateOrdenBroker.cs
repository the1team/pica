﻿using System;
using System.Collections.Generic;
using System.Text;

namespace OrdenesCore.DTO
{
    public class ResponseCreateOrdenBroker
    {
        public long orderId { get; set; }
        public int code { get; set; }
        public string message { get; set; }
    }
}
