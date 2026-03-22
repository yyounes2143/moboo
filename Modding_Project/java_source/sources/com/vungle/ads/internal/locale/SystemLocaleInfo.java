package com.vungle.ads.internal.locale;

import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/locale/SystemLocaleInfo;", "Lcom/vungle/ads/internal/locale/LocaleInfo;", "()V", "language", "", "getLanguage", "()Ljava/lang/String;", "timeZoneId", "getTimeZoneId", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class SystemLocaleInfo implements LocaleInfo {
    @Override // com.vungle.ads.internal.locale.LocaleInfo
    @NotNull
    public String getLanguage() {
        return Locale.getDefault().getLanguage();
    }

    @Override // com.vungle.ads.internal.locale.LocaleInfo
    @NotNull
    public String getTimeZoneId() {
        return TimeZone.getDefault().getID();
    }
}
