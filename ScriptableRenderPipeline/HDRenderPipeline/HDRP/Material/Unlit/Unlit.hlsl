//-----------------------------------------------------------------------------
// SurfaceData and BSDFData
//-----------------------------------------------------------------------------

// SurfaceData is define in Lit.cs which generate Lit.cs.hlsl
#include "Unlit.cs.hlsl"

//-----------------------------------------------------------------------------
// conversion function for forward
//-----------------------------------------------------------------------------

BSDFData ConvertSurfaceDataToBSDFData(SurfaceData data)
{
    BSDFData output;
    output.color = data.color;

    return output;
}

//-----------------------------------------------------------------------------
// Debug method (use to display values)
//-----------------------------------------------------------------------------

void GetSurfaceDataDebug(uint paramId, SurfaceData surfaceData, inout float3 result, inout bool needLinearToSRGB, float debugExposure)
{
    GetGeneratedSurfaceDataDebug(paramId, surfaceData, result, needLinearToSRGB, debugExposure);
}

void GetBSDFDataDebug(uint paramId, BSDFData bsdfData, inout float3 result, inout bool needLinearToSRGB, float debugExposure)
{
    GetGeneratedBSDFDataDebug(paramId, bsdfData, result, needLinearToSRGB, debugExposure);
}

//-----------------------------------------------------------------------------
// No light evaluation, this is unlit
//-----------------------------------------------------------------------------

LightTransportData GetLightTransportData(SurfaceData surfaceData, BuiltinData builtinData, BSDFData bsdfData)
{
    LightTransportData lightTransportData;

    lightTransportData.diffuseColor = float3(0.0, 0.0, 0.0);
    lightTransportData.emissiveColor = builtinData.emissiveColor;

    return lightTransportData;
}
