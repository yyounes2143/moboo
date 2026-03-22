package com.facebook.internal;

import android.content.Intent;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.CallbackManager;
import com.facebook.FacebookSdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0003\u0016\u0015\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ)\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl;", "Lcom/facebook/CallbackManager;", "<init>", "()V", "", "requestCode", "Lcom/facebook/internal/CallbackManagerImpl$Callback;", "callback", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V", "resultCode", "Landroid/content/Intent;", "data", "", "onActivityResult", "(IILandroid/content/Intent;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "callbacks", "Companion", "Callback", "RequestCodeOffset", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CallbackManagerImpl implements CallbackManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Integer, Callback> f6634Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Integer, Callback> f6635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl$Callback;", "", "", "resultCode", "Landroid/content/Intent;", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILandroid/content/Intent;)Z", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Callback {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @Nullable Intent intent);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0003¢\u0006\u0004\b\u0011\u0010\u0012R \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl$Companion;", "", "<init>", "()V", "", "requestCode", "Lcom/facebook/internal/CallbackManagerImpl$Callback;", "callback", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lcom/facebook/internal/CallbackManagerImpl$Callback;", "resultCode", "Landroid/content/Intent;", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IILandroid/content/Intent;)Z", "", "staticCallbacks", "Ljava/util/Map;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Intent intent) {
            Callback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return false;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, intent);
        }

        @JvmStatic
        public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull Callback callback) {
            if (CallbackManagerImpl.f6634Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(Integer.valueOf(i))) {
                return;
            }
            CallbackManagerImpl.f6634Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(i), callback);
        }

        @JvmStatic
        public final synchronized Callback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return (Callback) CallbackManagerImpl.f6634Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Integer.valueOf(i));
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "(Ljava/lang/String;II)V", "toRequestCode", "Login", "Share", "Message", "Like", "GameRequest", "AppGroupCreate", "AppGroupJoin", "AppInvite", "DeviceShare", "GamingFriendFinder", "GamingGroupIntegration", "Referral", "GamingContextCreate", "GamingContextSwitch", "GamingContextChoose", "TournamentShareDialog", "TournamentJoinDialog", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum RequestCodeOffset {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8),
        GamingFriendFinder(9),
        GamingGroupIntegration(10),
        Referral(11),
        GamingContextCreate(12),
        GamingContextSwitch(13),
        GamingContextChoose(14),
        TournamentShareDialog(15),
        TournamentJoinDialog(16);
        
        private final int offset;

        RequestCodeOffset(int i) {
            this.offset = i;
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static RequestCodeOffset[] valuesCustom() {
            RequestCodeOffset[] valuesCustom = values();
            return (RequestCodeOffset[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        public final int toRequestCode() {
            return FacebookSdk.Wwwwwwwwwwwwwwwww() + this.offset;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull Callback callback) {
        this.f6635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(i), callback);
    }

    @Override // com.facebook.CallbackManager
    public boolean onActivityResult(int i, int i2, @Nullable Intent intent) {
        Callback callback = this.f6635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Integer.valueOf(i));
        if (callback == null) {
            return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, intent);
        }
        return callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, intent);
    }
}
