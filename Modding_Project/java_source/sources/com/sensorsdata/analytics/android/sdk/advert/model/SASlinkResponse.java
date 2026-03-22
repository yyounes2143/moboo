package com.sensorsdata.analytics.android.sdk.advert.model;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SASlinkResponse {
    public String commonRedirectURI;
    public String message;
    public String slink;
    public String slinkID;
    public int statusCode;

    public String toString() {
        return "SASlinkResponse{statusCode=" + this.statusCode + ", message='" + this.message + "', slink='" + this.slink + "', slinkID='" + this.slinkID + "', commonRedirectURI='" + this.commonRedirectURI + '\'' + AbstractJsonLexerKt.END_OBJ;
    }
}
