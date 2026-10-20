declare module '@apiverve/countryboundaries' {
  export interface countryboundariesOptions {
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

  export interface countryboundariesResponse {
    status: string;
    error: string | null;
    data: CountryBoundariesData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CountryBoundariesData {
      features: Feature[];
      type:     null | string;
  }
  
  interface Feature {
      geometry:   Geometry;
      id:         null | string;
      properties: Properties;
      type:       null | string;
  }
  
  interface Geometry {
      coordinates: Array<Array<Array<(number | null)[]>>>;
      type:        null | string;
  }
  
  interface Properties {
      name: null | string;
  }

  export default class countryboundariesWrapper {
    constructor(options: countryboundariesOptions);

    execute(callback: (error: any, data: countryboundariesResponse | null) => void): Promise<countryboundariesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: countryboundariesResponse | null) => void): Promise<countryboundariesResponse>;
    execute(query?: Record<string, any>): Promise<countryboundariesResponse>;
  }
}
