package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.LayoutRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.login.LoginClient;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u0000 D2\u00020\u0001:\u0001DB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\u0003J-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0003J)\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\bJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001f\u0010\u0003J\u000f\u0010 \u001a\u00020\u0006H\u0014¢\u0006\u0004\b \u0010\u0003J#\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00060#2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0006H\u0002¢\u0006\u0004\b+\u0010\u0003J\u000f\u0010,\u001a\u00020\u0006H\u0002¢\u0006\u0004\b,\u0010\u0003J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020-H\u0002¢\u0006\u0004\b.\u0010/R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R$\u0010:\u001a\u00020\t2\u0006\u00108\u001a\u00020\t8\u0006@BX\u0086.¢\u0006\f\n\u0004\b%\u00109\u001a\u0004\b5\u0010\u000bR0\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00190;2\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u00190;8\u0006@BX\u0086.¢\u0006\f\n\u0004\b,\u0010<\u001a\u0004\b=\u0010>R\u0016\u0010A\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010@R\u0014\u0010C\u001a\u00020\u00168UX\u0094\u0004¢\u0006\u0006\u001a\u0004\b1\u0010B¨\u0006E"}, d2 = {"Lcom/facebook/login/LoginFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Lcom/facebook/login/LoginClient;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/LoginClient;", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "outState", "onSaveInstanceState", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "Landroidx/fragment/app/FragmentActivity;", "activity", "Lkotlin/Function1;", "Landroidx/activity/result/ActivityResult;", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroidx/fragment/app/FragmentActivity;)Lkotlin/jvm/functions/Function1;", "Lcom/facebook/login/LoginClient$Result;", "outcome", "Wwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Result;)V", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "callingPackage", "Lcom/facebook/login/LoginClient$Request;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "<set-?>", "Lcom/facebook/login/LoginClient;", "loginClient", "Landroidx/activity/result/ActivityResultLauncher;", "Landroidx/activity/result/ActivityResultLauncher;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Landroidx/activity/result/ActivityResultLauncher;", "launcher", "Landroid/view/View;", "progressBar", "()I", "layoutResId", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class LoginFragment extends Fragment {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public View f6999Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ActivityResultLauncher<Intent> f7000Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public LoginClient f7001Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public LoginClient.Request f7002Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f7003Wwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/facebook/login/LoginFragment$Companion;", "", "()V", "EXTRA_REQUEST", "", "NULL_CALLING_PKG_ERROR_MSG", "REQUEST_KEY", "RESULT_KEY", "SAVED_LOGIN_CLIENT", "TAG", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwww(Function1 function1, ActivityResult activityResult) {
        function1.invoke(activityResult);
    }

    public static final void Wwwwwwwwwwwwwwwwwww(LoginFragment loginFragment, LoginClient.Result result) {
        loginFragment.Wwwwwwwwwwwwwwwww(result);
    }

    public final void Wwwwwwwwwwwwww() {
        View view = this.f6999Wwwwwwwwwwwwwwwwwwww;
        view.getClass();
        view.setVisibility(0);
        Wwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwww(LoginClient.Result result) {
        int i;
        this.f7002Wwwwwwwwwwwwwwwwwwwwwww = null;
        if (result.f6995Wwwwwwwwwwwwwwwwwwwwwwwww == LoginClient.Result.Code.CANCEL) {
            i = 0;
        } else {
            i = -1;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        FragmentActivity activity = getActivity();
        if (isAdded() && activity != null) {
            activity.setResult(i, intent);
            activity.finish();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwww(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity == null) {
            return;
        }
        this.f7003Wwwwwwwwwwwwwwwwwwwwwwww = callingActivity.getPackageName();
    }

    public final void Wwwwwwwwwwwwwwwwwwwww() {
        View view = this.f6999Wwwwwwwwwwwwwwwwwwww;
        view.getClass();
        view.setVisibility(8);
        Wwwwwwwwwwwwwwww();
    }

    public final Function1<ActivityResult, Unit> Wwwwwwwwwwwwwwwwwwwwww(final FragmentActivity fragmentActivity) {
        return new Function1<ActivityResult, Unit>() { // from class: com.facebook.login.LoginFragment$getLoginMethodHandlerCallback$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ActivityResult activityResult) {
                invoke2(activityResult);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ActivityResult activityResult) {
                if (activityResult.getResultCode() == -1) {
                    LoginFragment.this.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww(LoginClient.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), activityResult.getResultCode(), activityResult.getData());
                } else {
                    fragmentActivity.finish();
                }
            }
        };
    }

    @NotNull
    public final LoginClient Wwwwwwwwwwwwwwwwwwwwwww() {
        LoginClient loginClient = this.f7001Wwwwwwwwwwwwwwwwwwwwww;
        loginClient.getClass();
        return loginClient;
    }

    @LayoutRes
    public int Wwwwwwwwwwwwwwwwwwwwwwww() {
        return com.facebook.common.R.layout.com_facebook_login_fragment;
    }

    @NotNull
    public final ActivityResultLauncher<Intent> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        ActivityResultLauncher<Intent> activityResultLauncher = this.f7000Wwwwwwwwwwwwwwwwwwwww;
        activityResultLauncher.getClass();
        return activityResultLauncher;
    }

    @NotNull
    public LoginClient Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new LoginClient(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        LoginClient loginClient;
        Bundle bundleExtra;
        super.onCreate(bundle);
        if (bundle == null) {
            loginClient = null;
        } else {
            loginClient = (LoginClient) bundle.getParcelable("loginClient");
        }
        if (loginClient != null) {
            loginClient.Wwwwwwwwwwww(this);
        } else {
            loginClient = Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f7001Wwwwwwwwwwwwwwwwwwwwww = loginClient;
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwww(new LoginClient.OnCompletedListener() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.login.LoginClient.OnCompletedListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result result) {
                LoginFragment.Wwwwwwwwwwwwwwwwwww(LoginFragment.this, result);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwww(activity);
        Intent intent = activity.getIntent();
        if (intent != null && (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) != null) {
            this.f7002Wwwwwwwwwwwwwwwwwwwwwww = (LoginClient.Request) bundleExtra.getParcelable(AdActivity.REQUEST_KEY_EXTRA);
        }
        ActivityResultContracts.StartActivityForResult startActivityForResult = new ActivityResultContracts.StartActivityForResult();
        final Function1<ActivityResult, Unit> Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(activity);
        this.f7000Wwwwwwwwwwwwwwwwwwwww = registerForActivityResult(startActivityForResult, new ActivityResultCallback() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                LoginFragment.Wwwwwwwwwwwwwwwwww(Function1.this, (ActivityResult) obj);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(Wwwwwwwwwwwwwwwwwwwwwwww(), viewGroup, false);
        this.f6999Wwwwwwwwwwwwwwwwwwww = inflate.findViewById(com.facebook.common.R.id.com_facebook_login_fragment_progress_bar);
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwww(new LoginClient.BackgroundProcessingListener() { // from class: com.facebook.login.LoginFragment$onCreateView$1
            @Override // com.facebook.login.LoginClient.BackgroundProcessingListener
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                LoginFragment.this.Wwwwwwwwwwwwwwwwwwwww();
            }

            @Override // com.facebook.login.LoginClient.BackgroundProcessingListener
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                LoginFragment.this.Wwwwwwwwwwwwww();
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        super.onDestroy();
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
        View findViewById;
        super.onPause();
        View view = getView();
        if (view == null) {
            findViewById = null;
        } else {
            findViewById = view.findViewById(com.facebook.common.R.id.com_facebook_login_fragment_progress_bar);
        }
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void onResume() {
        super.onResume();
        if (this.f7003Wwwwwwwwwwwwwwwwwwwwwwww == null) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
            FragmentTrackHelper.trackFragmentResume(this);
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwww(this.f7002Wwwwwwwwwwwwwwwwwwwwwww);
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", Wwwwwwwwwwwwwwwwwwwwwww());
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

    public void Wwwwwwwwwwwwwww() {
    }

    public void Wwwwwwwwwwwwwwww() {
    }
}
