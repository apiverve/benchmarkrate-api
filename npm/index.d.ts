declare module '@apiverve/benchmarkrate' {
  export interface benchmarkrateOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface benchmarkrateResponse {
    status: string;
    error: string | null;
    data: BenchmarkRateData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BenchmarkRateData {
      rate:            null | string;
      name:            null | string;
      currency:        null | string;
      region:          null | string;
      administrator:   null | string;
      value:           number | null;
      date:            Date | null;
      lastUpdated:     Date | null;
      change1D:        number | null;
      changeDirection: null | string;
      previousValue:   number | null;
      previousDate:    Date | null;
  }

  export default class benchmarkrateWrapper {
    constructor(options: benchmarkrateOptions);

    execute(callback: (error: any, data: benchmarkrateResponse | null) => void): Promise<benchmarkrateResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: benchmarkrateResponse | null) => void): Promise<benchmarkrateResponse>;
    execute(query?: Record<string, any>): Promise<benchmarkrateResponse>;
  }
}
