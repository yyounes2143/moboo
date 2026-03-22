package com.changdu.component.webviewcache;

import android.util.Base64;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import java.nio.charset.Charset;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0082\bJ\u0011\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0082\bJ\u0011\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0082\bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÂ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÂ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\u001a\u0010\u001c\u001a\u00020\u000f2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u001eJ\u0006\u0010\u001f\u001a\u00020\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0012\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0012\u0010\u0005\u001a\u00020\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;", "", "requestId", "", "params", "respData", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getRequestId", "()Ljava/lang/String;", "base64DecodeToByteArray", "", "str", "base64DecodeToString", "base64EncodeToString", "clearParams", "", "component1", "component2", "component3", "copy", "equals", "", "other", "getParamsJson", "Lorg/json/JSONObject;", "getRawParams", "hashCode", "", "setRespData", "respDataMap", "", "toJsonStr", "toString", "webview-cache_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCDJsInterfaceParamsData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDJsInterfaceParamsData.kt\ncom/changdu/component/webviewcache/CDJsInterfaceParamsData\n*L\n1#1,87:1\n68#1,2:88\n80#1,3:90\n70#1,3:93\n56#1,5:96\n80#1,3:101\n*S KotlinDebug\n*F\n+ 1 CDJsInterfaceParamsData.kt\ncom/changdu/component/webviewcache/CDJsInterfaceParamsData\n*L\n21#1:88,2\n21#1:90,3\n21#1:93,3\n42#1:96,5\n69#1:101,3\n*E\n"})
/* loaded from: classes3.dex */
public final class CDJsInterfaceParamsData {
    @SerializedName("params")
    @NotNull
    private String params;
    @SerializedName("requestId")
    @NotNull
    private final String requestId;
    @SerializedName("respData")
    @NotNull
    private String respData;

    public CDJsInterfaceParamsData() {
        this(null, null, null, 7, null);
    }

    private final byte[] base64DecodeToByteArray(String str) {
        try {
            return Base64.decode(str, 2);
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    private final String base64DecodeToString(String str) {
        byte[] bArr;
        try {
            try {
                bArr = Base64.decode(str, 2);
            } catch (Exception unused) {
                bArr = new byte[0];
            }
            return new String(bArr, Charset.forName("UTF-8"));
        } catch (Exception unused2) {
            return "";
        }
    }

    private final String base64EncodeToString(String str) {
        try {
            return Base64.encodeToString(str.getBytes(Charsets.UTF_8), 2);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private final String component2() {
        return this.params;
    }

    private final String component3() {
        return this.respData;
    }

    public static /* synthetic */ CDJsInterfaceParamsData copy$default(CDJsInterfaceParamsData cDJsInterfaceParamsData, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cDJsInterfaceParamsData.requestId;
        }
        if ((i & 2) != 0) {
            str2 = cDJsInterfaceParamsData.params;
        }
        if ((i & 4) != 0) {
            str3 = cDJsInterfaceParamsData.respData;
        }
        return cDJsInterfaceParamsData.copy(str, str2, str3);
    }

    public final void clearParams() {
        this.params = "";
    }

    @NotNull
    public final String component1() {
        return this.requestId;
    }

    @NotNull
    public final CDJsInterfaceParamsData copy(@NotNull String str, @NotNull String str2, @NotNull String str3) {
        return new CDJsInterfaceParamsData(str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CDJsInterfaceParamsData)) {
            return false;
        }
        CDJsInterfaceParamsData cDJsInterfaceParamsData = (CDJsInterfaceParamsData) obj;
        if (Intrinsics.areEqual(this.requestId, cDJsInterfaceParamsData.requestId) && Intrinsics.areEqual(this.params, cDJsInterfaceParamsData.params) && Intrinsics.areEqual(this.respData, cDJsInterfaceParamsData.respData)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final JSONObject getParamsJson() {
        try {
            return new JSONObject(getRawParams());
        } catch (Exception unused) {
            return new JSONObject();
        }
    }

    @NotNull
    public final String getRawParams() {
        byte[] bArr;
        try {
            try {
                bArr = Base64.decode(this.params, 2);
            } catch (Exception unused) {
                bArr = new byte[0];
            }
            return new String(bArr, Charset.forName("UTF-8"));
        } catch (Exception unused2) {
            return "";
        }
    }

    @NotNull
    public final String getRequestId() {
        return this.requestId;
    }

    public int hashCode() {
        int hashCode = this.params.hashCode();
        return this.respData.hashCode() + ((hashCode + (this.requestId.hashCode() * 31)) * 31);
    }

    public final void setRespData(@NotNull Map<String, ? extends Object> map) {
        String str;
        if (!map.isEmpty()) {
            try {
                try {
                    str = Base64.encodeToString(new Gson().toJson(map).getBytes(Charsets.UTF_8), 2);
                } catch (Exception e) {
                    e.printStackTrace();
                    str = "";
                }
                this.respData = str;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @NotNull
    public final String toJsonStr() {
        return new Gson().toJson(this);
    }

    @NotNull
    public String toString() {
        String str = this.requestId;
        String str2 = this.params;
        String str3 = this.respData;
        return "CDJsInterfaceParamsData(requestId=" + str + ", params=" + str2 + ", respData=" + str3 + ")";
    }

    public CDJsInterfaceParamsData(@NotNull String str, @NotNull String str2, @NotNull String str3) {
        this.requestId = str;
        this.params = str2;
        this.respData = str3;
    }

    public /* synthetic */ CDJsInterfaceParamsData(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3);
    }
}
