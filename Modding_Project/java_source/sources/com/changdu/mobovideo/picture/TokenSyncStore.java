package com.changdu.mobovideo.picture;

import android.content.SharedPreferences;
import com.changdu.mobovideo.VideoApplication;
import com.google.ads.mediation.vungle.VungleConstants;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0015\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R(\u0010\u001b\u001a\u0004\u0018\u00010\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0018R\u0011\u0010\u001e\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/changdu/mobovideo/picture/TokenSyncStore;", "", "<init>", "()V", "", BidResponsed.KEY_TOKEN, VungleConstants.KEY_USER_ID, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "PERIODIC_REFRESH_INTERVAL_MS", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/SharedPreferences;", "prefs", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "pendingToken", "lastSyncedToken", "()J", "lastTokenSyncAt", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TokenSyncStore {
    @NotNull
    public static final TokenSyncStore INSTANCE = new TokenSyncStore();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final long f5581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1209600000;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final SharedPreferences f5580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("picture_token_sync_store", 0);

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        f5580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit().putString("pending_token", str).apply();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
        if (!StringsKt.isBlank(str) && !StringsKt.isBlank(str2)) {
            f5580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit().putString("last_synced_token", str).putString("last_synced_user_id", str2).putString("pending_token", "").putLong("last_token_sync_at", System.currentTimeMillis()).commit();
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) || System.currentTimeMillis() - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() >= f5581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString("pending_token", null);
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getLong("last_token_sync_at", 0L);
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString("last_synced_token", null);
    }
}
