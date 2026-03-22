package com.facebook.internal;

import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookSdk;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/facebook/internal/InstagramCustomTab;", "Lcom/facebook/internal/CustomTab;", "action", "", "parameters", "Landroid/os/Bundle;", "(Ljava/lang/String;Landroid/os/Bundle;)V", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class InstagramCustomTab extends CustomTab {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/InstagramCustomTab$Companion;", "", "<init>", "()V", "", "action", "Landroid/os/Bundle;", "parameters", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable Bundle bundle) {
            if (Intrinsics.areEqual(str, "oauth")) {
                Utility utility = Utility.INSTANCE;
                return Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwww(), "oauth/authorize", bundle);
            }
            Utility utility2 = Utility.INSTANCE;
            String Wwwwwwwwwwwwwwwwwwwwwwww2 = ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwww();
            return Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwww2, FacebookSdk.Wwwwwwwwwww() + "/dialog/" + str, bundle);
        }

        public Companion() {
        }
    }

    public InstagramCustomTab(@NotNull String str, @Nullable Bundle bundle) {
        super(str, bundle);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, bundle == null ? new Bundle() : bundle));
    }
}
