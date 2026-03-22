package com.facebook.internal.instrument.errorreport;

import androidx.annotation.RestrictTo;
import com.facebook.internal.instrument.InstrumentUtility;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0013\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0013R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0011\u0010\u001d\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010 \u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u001f¨\u0006\""}, d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportData;", "", "", "message", "<init>", "(Ljava/lang/String;)V", "Ljava/io/File;", "file", "(Ljava/io/File;)V", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/instrument/errorreport/ErrorReportData;)I", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "toString", "()Ljava/lang/String;", "Ljava/lang/String;", "filename", "errorMessage", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Long;", CampaignEx.JSON_KEY_TIMESTAMP, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isValid", "Lorg/json/JSONObject;", "()Lorg/json/JSONObject;", "parameters", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class ErrorReportData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Long f6905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6906Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6907Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportData$Companion;", "", "()V", "PARAM_TIMESTAMP", "", "PRARAM_ERROR_MESSAGE", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public ErrorReportData(@Nullable String str) {
        this.f6905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f6906Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("error_log_");
        Long l = this.f6905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (l != null) {
            stringBuffer.append(l.longValue());
            stringBuffer.append(".json");
            this.f6907Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = stringBuffer.toString();
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
            InstrumentUtility.Wwwwwwwwwwwwwww(this.f6907Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, toString());
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f6906Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && this.f6905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        try {
            Long l = this.f6905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (l != null) {
                jSONObject.put(CampaignEx.JSON_KEY_TIMESTAMP, l);
            }
            jSONObject.put("error_message", this.f6906Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ErrorReportData errorReportData) {
        Long l = this.f6905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (l == null) {
            return -1;
        }
        long longValue = l.longValue();
        Long l2 = errorReportData.f6905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (l2 == null) {
            return 1;
        }
        return Intrinsics.compare(l2.longValue(), longValue);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6907Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public String toString() {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return super.toString();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString();
    }

    public ErrorReportData(@NotNull File file) {
        String name = file.getName();
        this.f6907Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = name;
        JSONObject Wwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwww(name, true);
        if (Wwwwwwwwwwwwwwwww2 != null) {
            this.f6905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(Wwwwwwwwwwwwwwwww2.optLong(CampaignEx.JSON_KEY_TIMESTAMP, 0L));
            this.f6906Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwww2.optString("error_message", null);
        }
    }
}
