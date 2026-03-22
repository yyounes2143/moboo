package com.changdu.component.httpbiz;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.TypeAdapter;
import okhttp3.ResponseBody;
import retrofit2.Converter;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class c implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final TypeAdapter f5335a;
    public final boolean b;

    public c(TypeAdapter typeAdapter, boolean z) {
        this.f5335a = typeAdapter;
        this.b = z;
    }

    @Override // retrofit2.Converter
    /* renamed from: a */
    public final Object convert(ResponseBody responseBody) {
        String str = "";
        try {
            String string = responseBody.string();
            try {
                JsonObject asJsonObject = JsonParser.parseString(string).getAsJsonObject();
                JsonArray asJsonArray = asJsonObject.get("ResponseObject").getAsJsonArray();
                asJsonObject.remove("ResponseObject");
                if (asJsonArray != null && !asJsonArray.isJsonNull() && asJsonArray.size() > 0) {
                    JsonObject asJsonObject2 = asJsonArray.get(0).getAsJsonObject();
                    if (this.b) {
                        asJsonObject.addProperty("ResponseObject", asJsonObject2.toString());
                    } else {
                        asJsonObject.add("ResponseObject", asJsonObject2);
                    }
                } else if (this.b) {
                    asJsonObject.addProperty("ResponseObject", "");
                } else {
                    asJsonObject.add("ResponseObject", new JsonObject());
                }
                return this.f5335a.fromJsonTree(asJsonObject);
            } catch (Throwable th) {
                th = th;
                str = string;
                try {
                    th.printStackTrace();
                    JsonObject asJsonObject3 = JsonParser.parseString(JsonUtils.EMPTY_JSON).getAsJsonObject();
                    asJsonObject3.addProperty("StatusCode", (Number) (-1));
                    String message = th.getMessage();
                    asJsonObject3.addProperty("Description", "parsing response data: \n" + ((Object) str) + "\nerror: " + message);
                    return this.f5335a.fromJsonTree(asJsonObject3);
                } finally {
                    responseBody.close();
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
