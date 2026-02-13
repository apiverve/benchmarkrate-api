declare module '@apiverve/benchmarkrate' {
  export interface benchmarkrateOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface benchmarkrateResponse {
    status: string;
    error: string | null;
    data: BenchmarkRateData;
    code?: number;
  }


  interface BenchmarkRateData {
      rate:          string;
      name:          string;
      currency:      string;
      region:        string;
      administrator: string;
      value:         number;
      date:          Date;
      lastUpdated:   Date;
  }

  export default class benchmarkrateWrapper {
    constructor(options: benchmarkrateOptions);

    execute(callback: (error: any, data: benchmarkrateResponse | null) => void): Promise<benchmarkrateResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: benchmarkrateResponse | null) => void): Promise<benchmarkrateResponse>;
    execute(query?: Record<string, any>): Promise<benchmarkrateResponse>;
  }
}
