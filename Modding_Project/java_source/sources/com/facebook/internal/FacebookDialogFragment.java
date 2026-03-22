package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.FacebookWebFallbackDialog;
import com.facebook.internal.WebDialog;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0001¢\u0006\u0004\b\t\u0010\u0003J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J#\u0010\u0016\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0018\u0010\bR$\u0010\u001e\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/facebook/internal/FacebookDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onResume", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onDestroyView", "values", "Lcom/facebook/FacebookException;", "error", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Dialog;", "getInnerDialog", "()Landroid/app/Dialog;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Dialog;)V", "innerDialog", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FacebookDialogFragment extends DialogFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Dialog f6647Wwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/internal/FacebookDialogFragment$Companion;", "", "()V", "TAG", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(FacebookDialogFragment facebookDialogFragment, Bundle bundle, FacebookException facebookException) {
        facebookDialogFragment.Wwwwwwwwwwwwwwwwwwwwwwww(bundle);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookDialogFragment facebookDialogFragment, Bundle bundle, FacebookException facebookException) {
        facebookDialogFragment.Wwwwwwwwwwwwwwwwwwwwwwwww(bundle, facebookException);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable Dialog dialog) {
        this.f6647Wwwwwwwwwwwwwwwwwwwwwwww = dialog;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        Intent intent = new Intent();
        if (bundle == null) {
            bundle = new Bundle();
        }
        intent.putExtras(bundle);
        activity.setResult(-1, intent);
        activity.finish();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle, FacebookException facebookException) {
        int i;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        Intent Wwwwwwwwwwwwwwwwwwwww2 = NativeProtocol.Wwwwwwwwwwwwwwwwwwwww(activity.getIntent(), bundle, facebookException);
        if (facebookException == null) {
            i = -1;
        } else {
            i = 0;
        }
        activity.setResult(i, Wwwwwwwwwwwwwwwwwwwww2);
        activity.finish();
    }

    @VisibleForTesting
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        FragmentActivity activity;
        boolean z;
        WebDialog Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String string;
        if (this.f6647Wwwwwwwwwwwwwwwwwwwwwwww != null || (activity = getActivity()) == null) {
            return;
        }
        Bundle Wwwwwwwwwww2 = NativeProtocol.Wwwwwwwwwww(activity.getIntent());
        if (Wwwwwwwwwww2 == null) {
            z = false;
        } else {
            z = Wwwwwwwwwww2.getBoolean("is_fallback", false);
        }
        String str = null;
        Bundle bundle = null;
        if (!z) {
            if (Wwwwwwwwwww2 == null) {
                string = null;
            } else {
                string = Wwwwwwwwwww2.getString("action");
            }
            if (Wwwwwwwwwww2 != null) {
                bundle = Wwwwwwwwwww2.getBundle("params");
            }
            if (Utility.Kk(string)) {
                Utility.Illllllllllllllllllllll("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
                activity.finish();
                return;
            } else if (string != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new WebDialog.Builder(activity, string, bundle).Wwwwwwwwwwwwwwwwwwwwwwwwwww(new WebDialog.OnCompleteListener() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.facebook.internal.WebDialog.OnCompleteListener
                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle2, FacebookException facebookException) {
                        FacebookDialogFragment.Wwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookDialogFragment.this, bundle2, facebookException);
                    }
                }).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
        } else {
            if (Wwwwwwwwwww2 != null) {
                str = Wwwwwwwwwww2.getString("url");
            }
            if (Utility.Kk(str)) {
                Utility.Illllllllllllllllllllll("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
                activity.finish();
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("fb%s://bridge/", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww()}, 1));
            FacebookWebFallbackDialog.Companion companion = FacebookWebFallbackDialog.Companion;
            if (str != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity, str, format);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwww(new WebDialog.OnCompleteListener() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.facebook.internal.WebDialog.OnCompleteListener
                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle2, FacebookException facebookException) {
                        FacebookDialogFragment.Wwwwwwwwwwwwwwwwwwwwwwwwww(FacebookDialogFragment.this, bundle2, facebookException);
                    }
                });
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
        }
        this.f6647Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if ((this.f6647Wwwwwwwwwwwwwwwwwwwwwwww instanceof WebDialog) && isResumed()) {
            Dialog dialog = this.f6647Wwwwwwwwwwwwwwwwwwwwwwww;
            if (dialog != null) {
                ((WebDialog) dialog).Wwwwwwwwwww();
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type com.facebook.internal.WebDialog");
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f6647Wwwwwwwwwwwwwwwwwwwwwwww;
        if (dialog == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwww(null, null);
            setShowsDialog(false);
            return super.onCreateDialog(bundle);
        } else if (dialog != null) {
            return dialog;
        } else {
            throw new NullPointerException("null cannot be cast to non-null type android.app.Dialog");
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void onResume() {
        super.onResume();
        Dialog dialog = this.f6647Wwwwwwwwwwwwwwwwwwwwwwww;
        if (dialog instanceof WebDialog) {
            if (dialog != null) {
                ((WebDialog) dialog).Wwwwwwwwwww();
            } else {
                NullPointerException nullPointerException = new NullPointerException("null cannot be cast to non-null type com.facebook.internal.WebDialog");
                FragmentTrackHelper.trackFragmentResume(this);
                throw nullPointerException;
            }
        }
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }
}
