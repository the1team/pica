﻿using System;
using System.Threading.Tasks;
using pica_sqs_enviar.core.domain.entities;

namespace pica_sqs_enviar.core.domain.interfaces
{
    public interface IBrokerService
    {
        Task<int> GetOrderId();
        Task<string> SendMessage(Orden orden);
    }
}
