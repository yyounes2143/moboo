package com.facebook.appevents.internal;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.FacebookSdk;
import com.unity3d.services.core.device.reader.JsonStorageKeyNames;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 ,2\u00020\u0001:\u0001,B'\b\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\t¢\u0006\u0004\b\f\u0010\u000bR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0010\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0017\u0010\u001d\u001a\u0004\b\u0015\u0010\u001eR$\u0010!\u001a\u0004\u0018\u00010\u00028F@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0011\u0010\u0010\"\u0004\b \u0010\u0014R$\u0010)\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0011\u0010+\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b#\u0010*¨\u0006-"}, d2 = {"Lcom/facebook/appevents/internal/SessionInfo;", "", "", "sessionStartTime", "sessionLastEventTime", "Ljava/util/UUID;", JsonStorageKeyNames.SESSION_ID_KEY, "<init>", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Long;", "getSessionStartTime", "()Ljava/lang/Long;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Long;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/UUID;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/UUID;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;)V", "", "<set-?>", "I", "()I", "interruptionCount", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "diskRestoreTime", "Lcom/facebook/appevents/internal/SourceApplicationInfo;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/internal/SourceApplicationInfo;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/internal/SourceApplicationInfo;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/internal/SourceApplicationInfo;)V", "sourceApplicationInfo", "()J", "sessionLength", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SessionInfo {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SourceApplicationInfo f6440Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Long f6441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public UUID f6443Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Long f6444Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Long f6445Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\u0003R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/facebook/appevents/internal/SessionInfo$Companion;", "", "<init>", "()V", "Lcom/facebook/appevents/internal/SessionInfo;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/internal/SessionInfo;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "INTERRUPTION_COUNT_KEY", "Ljava/lang/String;", "LAST_SESSION_INFO_END_KEY", "LAST_SESSION_INFO_START_KEY", "SESSION_ID_KEY", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @Nullable
        public final SessionInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
            long j = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
            long j2 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
            String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
            if (j == 0 || j2 == 0 || string == null) {
                return null;
            }
            SessionInfo sessionInfo = new SessionInfo(Long.valueOf(j), Long.valueOf(j2), null, 4, null);
            sessionInfo.f6442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
            sessionInfo.Wwwwwwwwwwwwwwwwwwwwwww(SourceApplicationInfo.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwwww(Long.valueOf(System.currentTimeMillis()));
            sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwww(UUID.fromString(string));
            return sessionInfo;
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()).edit();
            edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
            edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
            edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
            edit.remove("com.facebook.appevents.SessionInfo.sessionId");
            edit.apply();
            SourceApplicationInfo.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public Companion() {
        }
    }

    @JvmOverloads
    public SessionInfo(@Nullable Long l, @Nullable Long l2, @NotNull UUID uuid) {
        this.f6445Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = l;
        this.f6444Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = l2;
        this.f6443Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uuid;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww() {
        long longValue;
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()).edit();
        Long l = this.f6445Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j = 0;
        if (l == null) {
            longValue = 0;
        } else {
            longValue = l.longValue();
        }
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", longValue);
        Long l2 = this.f6444Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (l2 != null) {
            j = l2.longValue();
        }
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", j);
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f6442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f6443Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString());
        edit.apply();
        SourceApplicationInfo sourceApplicationInfo = this.f6440Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (sourceApplicationInfo != null && sourceApplicationInfo != null) {
            sourceApplicationInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable SourceApplicationInfo sourceApplicationInfo) {
        this.f6440Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = sourceApplicationInfo;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable Long l) {
        this.f6444Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = l;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull UUID uuid) {
        this.f6443Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uuid;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Long l) {
        this.f6441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = l;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f6442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
    }

    @Nullable
    public final SourceApplicationInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6440Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Long l;
        if (this.f6445Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && (l = this.f6444Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            if (l != null) {
                return l.longValue() - this.f6445Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.longValue();
            }
            throw new IllegalStateException("Required value was null.");
        }
        return 0L;
    }

    @Nullable
    public final Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6444Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final UUID Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6443Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Long l = this.f6441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (l == null) {
            return 0L;
        }
        return l;
    }

    public /* synthetic */ SessionInfo(Long l, Long l2, UUID uuid, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(l, l2, (i & 4) != 0 ? UUID.randomUUID() : uuid);
    }
}
