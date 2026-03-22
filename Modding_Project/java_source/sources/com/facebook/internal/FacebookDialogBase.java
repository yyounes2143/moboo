package com.facebook.internal;

import android.app.Activity;
import com.facebook.FacebookDialog;
import com.facebook.FacebookException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0010\b&\u0018\u0000 '*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003:\u0002'(J\u000f\u0010\u0005\u001a\u00020\u0004H$¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u000e\u001a\u0018\u0012\u0014\u0012\u00120\rR\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00000\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0015R.\u0010\u0018\u001a\u001a\u0012\u0014\u0012\u00120\rR\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001aR$\u0010!\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00198F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u0004\u0018\u00010\u00108DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R*\u0010&\u001a\u0018\u0012\u0014\u0012\u00120\rR\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00000\f8$X¤\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\u000f¨\u0006)"}, d2 = {"Lcom/facebook/internal/FacebookDialogBase;", "CONTENT", "RESULT", "Lcom/facebook/FacebookDialog;", "Lcom/facebook/internal/AppCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/AppCall;", "content", "", "mode", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/AppCall;", "", "Lcom/facebook/internal/FacebookDialogBase$ModeHandler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "activity", "Lcom/facebook/internal/FragmentWrapper;", "Lcom/facebook/internal/FragmentWrapper;", "fragmentWrapper", "Ljava/util/List;", "modeHandlers", "", "I", "requestCodeField", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "setRequestCode", "(I)V", "requestCode", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/app/Activity;", "activityContext", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "orderedModeHandlers", "Companion", "ModeHandler", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class FacebookDialogBase<CONTENT, RESULT> implements FacebookDialog<CONTENT, RESULT> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Object f6638Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<? extends FacebookDialogBase<CONTENT, RESULT>.ModeHandler> f6640Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FragmentWrapper f6641Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Activity f6642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/FacebookDialogBase$Companion;", "", "()V", "BASE_AUTOMATIC_MODE", "TAG", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b¤\u0004\u0018\u00002\u00020\u0001J\u001f\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0002\u001a\u00028\u0000H&¢\u0006\u0004\b\b\u0010\tR\"\u0010\u000f\u001a\u00020\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/facebook/internal/FacebookDialogBase$ModeHandler;", "", "content", "", "isBestEffort", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;Z)Z", "Lcom/facebook/internal/AppCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;", "Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Object;", "setMode", "(Ljava/lang/Object;)V", "mode", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public abstract class ModeHandler {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f6643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @NotNull
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public abstract AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CONTENT content);

        public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CONTENT content, boolean z);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public abstract List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Nullable
    public final Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Activity activity = this.f6642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (activity == null) {
            FragmentWrapper fragmentWrapper = this.f6641Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (fragmentWrapper == null) {
                return null;
            }
            return fragmentWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return activity;
    }

    @NotNull
    public abstract AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public final AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CONTENT content, Object obj) {
        boolean z;
        AppCall appCall;
        if (obj == f6638Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            z = true;
        } else {
            z = false;
        }
        Iterator<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> it = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().iterator();
        while (true) {
            if (it.hasNext()) {
                FacebookDialogBase<CONTENT, RESULT>.ModeHandler next = it.next();
                if (!z) {
                    Utility utility = Utility.INSTANCE;
                    if (!Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), obj)) {
                        continue;
                    }
                }
                if (next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(content, true)) {
                    try {
                        appCall = next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(content);
                        break;
                    } catch (FacebookException e) {
                        AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
                        DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, e);
                        appCall = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                }
            } else {
                appCall = null;
                break;
            }
        }
        if (appCall == null) {
            AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        }
        return appCall;
    }

    public final List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f6640Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f6640Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        List list = (List<? extends FacebookDialogBase<CONTENT, RESULT>.ModeHandler>) this.f6640Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (list != null) {
            return list;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<com.facebook.internal.FacebookDialogBase.ModeHandler<CONTENT of com.facebook.internal.FacebookDialogBase, RESULT of com.facebook.internal.FacebookDialogBase>>");
    }
}
