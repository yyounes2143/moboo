package com.facebook;

import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.Utility;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0012\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00020\u000e2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0012\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R(\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u000b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/facebook/ProfileManager;", "", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "localBroadcastManager", "Lcom/facebook/ProfileCache;", "profileCache", "<init>", "(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Lcom/facebook/Profile;", "currentProfile", "writeToCache", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/Profile;Z)V", "oldProfile", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/Profile;Lcom/facebook/Profile;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/ProfileCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/Profile;", "currentProfileField", "value", "()Lcom/facebook/Profile;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/Profile;)V", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ProfileManager {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile ProfileManager f6074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Profile f6075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ProfileCache f6076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LocalBroadcastManager f6077Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0016\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/facebook/ProfileManager$Companion;", "", "<init>", "()V", "Lcom/facebook/ProfileManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/ProfileManager;", "", "ACTION_CURRENT_PROFILE_CHANGED", "Ljava/lang/String;", "EXTRA_NEW_PROFILE", "EXTRA_OLD_PROFILE", "instance", "Lcom/facebook/ProfileManager;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final synchronized ProfileManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            ProfileManager profileManager;
            try {
                if (ProfileManager.f6074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    ProfileManager.f6074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ProfileManager(LocalBroadcastManager.getInstance(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()), new ProfileCache());
                }
                profileManager = ProfileManager.f6074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (profileManager == null) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
            return profileManager;
        }

        public Companion() {
        }
    }

    public ProfileManager(@NotNull LocalBroadcastManager localBroadcastManager, @NotNull ProfileCache profileCache) {
        this.f6077Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = localBroadcastManager;
        this.f6076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = profileCache;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Profile profile, boolean z) {
        Profile profile2 = this.f6075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f6075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = profile;
        if (z) {
            if (profile != null) {
                this.f6076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(profile);
            } else {
                this.f6076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
        if (!Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(profile2, profile)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(profile2, profile);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Profile profile) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(profile, true);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.f6077Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.sendBroadcast(intent);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Profile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f6076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return false;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, false);
        return true;
    }

    @Nullable
    public final Profile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
