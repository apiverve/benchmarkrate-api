using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BenchmarkRate
{
    /// <summary>
    /// Query options for the Benchmark Rate API
    /// </summary>
    public class BenchmarkRateQueryOptions
    {
        /// <summary>
        /// The benchmark rate to retrieve
        /// </summary>
        [JsonProperty("rate")]
        public string Rate { get; set; }
    }
}
