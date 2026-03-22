package com.applovin.impl.sdk;

import android.graphics.Color;
import androidx.annotation.Nullable;
import com.applovin.impl.l4;
import com.applovin.impl.r3;
import com.applovin.impl.s3;
import com.applovin.impl.sdk.array.ArrayDirectDownloadAd;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class AppLovinAdBase implements r3, ArrayDirectDownloadAd {
    @Nullable
    protected final JSONObject adObject;
    private final long createdAtMillis;
    @Nullable
    protected final JSONObject fullResponse;
    protected final k sdk;
    @Nullable
    protected final v4 synchronizedAdObject;
    @Nullable
    protected final v4 synchronizedFullResponse;
    protected final Object adObjectLock = new Object();
    protected final Object fullResponseLock = new Object();

    public AppLovinAdBase(JSONObject jSONObject, JSONObject jSONObject2, k kVar) {
        if (jSONObject != null) {
            if (jSONObject2 != null) {
                if (kVar != null) {
                    this.sdk = kVar;
                    if (((Boolean) kVar.a(l4.X5)).booleanValue()) {
                        this.synchronizedAdObject = new v4(jSONObject);
                        this.synchronizedFullResponse = new v4(jSONObject2);
                        this.adObject = null;
                        this.fullResponse = null;
                    } else {
                        this.adObject = jSONObject;
                        this.fullResponse = jSONObject2;
                        this.synchronizedAdObject = null;
                        this.synchronizedFullResponse = null;
                    }
                    this.createdAtMillis = System.currentTimeMillis();
                    return;
                }
                throw new IllegalArgumentException("No sdk specified");
            }
            throw new IllegalArgumentException("No response specified");
        }
        throw new IllegalArgumentException("No ad object specified");
    }

    public boolean containsKeyForAdObject(String str) {
        boolean has;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.a(str);
        }
        synchronized (this.adObjectLock) {
            has = this.adObject.has(str);
        }
        return has;
    }

    public String getAdDomain() {
        return getStringFromFullResponse("adomain", "");
    }

    @Override // com.applovin.impl.r3
    public abstract /* synthetic */ s3 getAdEventTracker();

    public abstract long getAdIdNumber();

    public boolean getBooleanFromAdObject(String str, Boolean bool) {
        boolean booleanValue;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.a(str, bool).booleanValue();
        }
        synchronized (this.adObjectLock) {
            booleanValue = JsonUtils.getBoolean(this.adObject, str, bool).booleanValue();
        }
        return booleanValue;
    }

    public boolean getBooleanFromFullResponse(String str, boolean z) {
        boolean booleanValue;
        v4 v4Var = this.synchronizedFullResponse;
        if (v4Var != null) {
            return v4Var.a(str, Boolean.valueOf(z)).booleanValue();
        }
        synchronized (this.fullResponseLock) {
            booleanValue = JsonUtils.getBoolean(this.fullResponse, str, Boolean.valueOf(z)).booleanValue();
        }
        return booleanValue;
    }

    public String getClCode() {
        String stringFromAdObject = getStringFromAdObject("clcode", "");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return stringFromAdObject;
        }
        return getStringFromFullResponse("clcode", "");
    }

    public int getColorFromAdObject(String str, int i) {
        String stringFromAdObject = getStringFromAdObject(str, null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Color.parseColor(stringFromAdObject);
        }
        return i;
    }

    public long getCreatedAtMillis() {
        return this.createdAtMillis;
    }

    public String getDspId() {
        return getStringFromFullResponse("dsp_id", "");
    }

    public String getDspName() {
        return getStringFromFullResponse("dsp_name", "");
    }

    public long getFetchLatencyMillis() {
        return getLongFromFullResponse("ad_fetch_latency_millis", -1L);
    }

    public long getFetchResponseSize() {
        return getLongFromFullResponse("ad_fetch_response_size", -1L);
    }

    public float getFloatFromAdObject(String str, float f) {
        float f2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.a(str, f);
        }
        synchronized (this.adObjectLock) {
            f2 = JsonUtils.getFloat(this.adObject, str, f);
        }
        return f2;
    }

    public int getIntFromAdObject(String str, int i) {
        int i2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.a(str, i);
        }
        synchronized (this.adObjectLock) {
            i2 = JsonUtils.getInt(this.adObject, str, i);
        }
        return i2;
    }

    public List<Integer> getIntegerListFromAdObject(String str, List<Integer> list) {
        List<Integer> integerList;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.a(str, (List) list);
        }
        synchronized (this.adObjectLock) {
            integerList = JsonUtils.getIntegerList(this.adObject, str, list);
        }
        return integerList;
    }

    public JSONArray getJsonArrayFromAdObject(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.a(str, jSONArray);
        }
        synchronized (this.adObjectLock) {
            jSONArray2 = JsonUtils.getJSONArray(this.adObject, str, jSONArray);
        }
        return jSONArray2;
    }

    public JSONObject getJsonObjectFromAdObject(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.a(str, jSONObject);
        }
        synchronized (this.adObjectLock) {
            jSONObject2 = JsonUtils.getJSONObject(this.adObject, str, jSONObject);
        }
        return jSONObject2;
    }

    public long getLongFromAdObject(String str, long j) {
        long j2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.a(str, j);
        }
        synchronized (this.adObjectLock) {
            j2 = JsonUtils.getLong(this.adObject, str, j);
        }
        return j2;
    }

    public long getLongFromFullResponse(String str, long j) {
        long j2;
        v4 v4Var = this.synchronizedFullResponse;
        if (v4Var != null) {
            return v4Var.a(str, j);
        }
        synchronized (this.fullResponseLock) {
            j2 = JsonUtils.getLong(this.fullResponse, str, j);
        }
        return j2;
    }

    @Override // com.applovin.impl.r3
    @Nullable
    public abstract /* synthetic */ String getOpenMeasurementContentUrl();

    @Override // com.applovin.impl.r3
    public abstract /* synthetic */ String getOpenMeasurementCustomReferenceData();

    @Override // com.applovin.impl.r3
    public abstract /* synthetic */ List getOpenMeasurementVerificationScriptResources();

    public k getSdk() {
        return this.sdk;
    }

    public String getStringFromAdObject(String str, String str2) {
        String string;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.a(str, str2);
        }
        synchronized (this.adObjectLock) {
            string = JsonUtils.getString(this.adObject, str, str2);
        }
        return string;
    }

    public String getStringFromFullResponse(String str, String str2) {
        String string;
        v4 v4Var = this.synchronizedFullResponse;
        if (v4Var != null) {
            return v4Var.a(str, str2);
        }
        synchronized (this.fullResponseLock) {
            string = JsonUtils.getString(this.fullResponse, str, str2);
        }
        return string;
    }

    public List<String> getStringListFromAdObject(String str, List<String> list) {
        List<String> stringList;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return v4Var.b(str, list);
        }
        synchronized (this.adObjectLock) {
            stringList = JsonUtils.getStringList(this.adObject, str, list);
        }
        return stringList;
    }

    @Override // com.applovin.impl.r3
    public abstract /* synthetic */ boolean isOpenMeasurementEnabled();
}
