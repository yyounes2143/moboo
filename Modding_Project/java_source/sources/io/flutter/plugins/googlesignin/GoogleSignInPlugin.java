package io.flutter.plugins.googlesignin;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.Wwwww;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.googlesignin.GoogleSignInPlugin;
import io.flutter.plugins.googlesignin.Messages;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class GoogleSignInPlugin implements FlutterPlugin, ActivityAware {
    private ActivityPluginBinding activityPluginBinding;
    private Delegate delegate;
    @Nullable
    private BinaryMessenger messenger;

    /* compiled from: Proguard */
    /* renamed from: io.flutter.plugins.googlesignin.GoogleSignInPlugin$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$plugins$googlesignin$Messages$SignInType;

        static {
            int[] iArr = new int[Messages.SignInType.values().length];
            $SwitchMap$io$flutter$plugins$googlesignin$Messages$SignInType = iArr;
            try {
                iArr[Messages.SignInType.GAMES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$plugins$googlesignin$Messages$SignInType[Messages.SignInType.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Delegate implements PluginRegistry.ActivityResultListener, Messages.GoogleSignInApi {
        private static final String ERROR_FAILURE_TO_RECOVER_AUTH = "failed_to_recover_auth";
        private static final String ERROR_REASON_EXCEPTION = "exception";
        private static final String ERROR_REASON_NETWORK_ERROR = "network_error";
        private static final String ERROR_REASON_SIGN_IN_CANCELED = "sign_in_canceled";
        private static final String ERROR_REASON_SIGN_IN_FAILED = "sign_in_failed";
        private static final String ERROR_REASON_SIGN_IN_REQUIRED = "sign_in_required";
        private static final String ERROR_REASON_STATUS = "status";
        private static final String ERROR_USER_RECOVERABLE_AUTH = "user_recoverable_auth";
        private static final int REQUEST_CODE_RECOVER_AUTH = 53294;
        @VisibleForTesting
        static final int REQUEST_CODE_REQUEST_SCOPE = 53295;
        private static final int REQUEST_CODE_SIGNIN = 53293;
        @Nullable
        private Activity activity;
        @NonNull
        private final Context context;
        private final GoogleSignInWrapper googleSignInWrapper;
        private PendingOperation pendingOperation;
        private List<String> requestedScopes;
        private GoogleSignInClient signInClient;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static class PendingOperation {
            static final /* synthetic */ boolean $assertionsDisabled = false;
            @Nullable
            final Messages.Result<Boolean> boolResult;
            @Nullable
            final Object data;
            @NonNull
            final String method;
            @Nullable
            final Messages.Result<String> stringResult;
            @Nullable
            final Messages.Result<Messages.UserData> userDataResult;
            @Nullable
            final Messages.VoidResult voidResult;

            public PendingOperation(@NonNull String str, @Nullable Messages.Result<Messages.UserData> result, @Nullable Messages.VoidResult voidResult, @Nullable Messages.Result<Boolean> result2, @Nullable Messages.Result<String> result3, @Nullable Object obj) {
                this.method = str;
                this.userDataResult = result;
                this.voidResult = voidResult;
                this.boolResult = result2;
                this.stringResult = result3;
                this.data = obj;
            }
        }

        public Delegate(@NonNull Context context, @NonNull GoogleSignInWrapper googleSignInWrapper) {
            this.context = context;
            this.googleSignInWrapper = googleSignInWrapper;
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Delegate delegate, Boolean bool, Messages.Result result, UserRecoverableAuthException userRecoverableAuthException, String str) {
            delegate.getClass();
            if (bool.booleanValue() && delegate.pendingOperation == null) {
                Activity activity = delegate.getActivity();
                if (activity == null) {
                    result.error(new Messages.FlutterError(ERROR_USER_RECOVERABLE_AUTH, "Cannot recover auth because app is not in foreground. " + userRecoverableAuthException.getLocalizedMessage(), null));
                    return;
                }
                delegate.checkAndSetPendingAccessTokenOperation("getTokens", result, str);
                activity.startActivityForResult(userRecoverableAuthException.getIntent(), REQUEST_CODE_RECOVER_AUTH);
                return;
            }
            result.error(new Messages.FlutterError(ERROR_USER_RECOVERABLE_AUTH, userRecoverableAuthException.getLocalizedMessage(), null));
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Delegate delegate, Task task) {
            delegate.getClass();
            if (task.isSuccessful()) {
                delegate.finishWithSuccess();
            } else {
                delegate.finishWithError("status", "Failed to disconnect.");
            }
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Delegate delegate, Task task) {
            delegate.getClass();
            if (task.isSuccessful()) {
                delegate.finishWithSuccess();
            } else {
                delegate.finishWithError("status", "Failed to signout.");
            }
        }

        private void checkAndSetPendingAccessTokenOperation(String str, Messages.Result<String> result, @NonNull Object obj) {
            checkAndSetPendingStringOperation(str, result, obj);
        }

        private void checkAndSetPendingBoolOperation(String str, @NonNull Messages.Result<Boolean> result) {
            checkAndSetPendingOperation(str, null, null, result, null, null);
        }

        private void checkAndSetPendingOperation(String str, Messages.Result<Messages.UserData> result, Messages.VoidResult voidResult, Messages.Result<Boolean> result2, Messages.Result<String> result3, Object obj) {
            if (this.pendingOperation == null) {
                this.pendingOperation = new PendingOperation(str, result, voidResult, result2, result3, obj);
                return;
            }
            throw new IllegalStateException("Concurrent operations detected: " + this.pendingOperation.method + ", " + str);
        }

        private void checkAndSetPendingSignInOperation(String str, @NonNull Messages.Result<Messages.UserData> result) {
            checkAndSetPendingOperation(str, result, null, null, null, null);
        }

        private void checkAndSetPendingStringOperation(String str, @NonNull Messages.Result<String> result, @Nullable Object obj) {
            checkAndSetPendingOperation(str, null, null, null, result, obj);
        }

        private void checkAndSetPendingVoidOperation(String str, @NonNull Messages.VoidResult voidResult) {
            checkAndSetPendingOperation(str, null, voidResult, null, null, null);
        }

        private String errorCodeForStatus(int i) {
            if (i != 4) {
                if (i != 7) {
                    if (i != 12501) {
                        return ERROR_REASON_SIGN_IN_FAILED;
                    }
                    return ERROR_REASON_SIGN_IN_CANCELED;
                }
                return ERROR_REASON_NETWORK_ERROR;
            }
            return ERROR_REASON_SIGN_IN_REQUIRED;
        }

        private void finishWithBoolean(Boolean bool) {
            Messages.Result<Boolean> result = this.pendingOperation.boolResult;
            Objects.requireNonNull(result);
            result.success(bool);
            this.pendingOperation = null;
        }

        private void finishWithError(String str, String str2) {
            PendingOperation pendingOperation = this.pendingOperation;
            Messages.VoidResult voidResult = pendingOperation.voidResult;
            if (voidResult != null) {
                Objects.requireNonNull(voidResult);
                voidResult.error(new Messages.FlutterError(str, str2, null));
            } else {
                Messages.Result result = pendingOperation.userDataResult;
                if (result == null && (result = pendingOperation.boolResult) == null) {
                    result = pendingOperation.stringResult;
                }
                Objects.requireNonNull(result);
                result.error(new Messages.FlutterError(str, str2, null));
            }
            this.pendingOperation = null;
        }

        private void finishWithSuccess() {
            Messages.VoidResult voidResult = this.pendingOperation.voidResult;
            Objects.requireNonNull(voidResult);
            voidResult.success();
            this.pendingOperation = null;
        }

        private void finishWithUserData(Messages.UserData userData) {
            Messages.Result<Messages.UserData> result = this.pendingOperation.userDataResult;
            Objects.requireNonNull(result);
            result.success(userData);
            this.pendingOperation = null;
        }

        private static boolean isNullOrEmpty(@Nullable String str) {
            if (str != null && !str.isEmpty()) {
                return false;
            }
            return true;
        }

        private void onSignInAccount(GoogleSignInAccount googleSignInAccount) {
            Messages.UserData.Builder displayName = new Messages.UserData.Builder().setEmail(googleSignInAccount.getEmail()).setId(googleSignInAccount.getId()).setIdToken(googleSignInAccount.getIdToken()).setServerAuthCode(googleSignInAccount.getServerAuthCode()).setDisplayName(googleSignInAccount.getDisplayName());
            if (googleSignInAccount.getPhotoUrl() != null) {
                displayName.setPhotoUrl(googleSignInAccount.getPhotoUrl().toString());
            }
            finishWithUserData(displayName.build());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSignInResult(Task<GoogleSignInAccount> task) {
            try {
                onSignInAccount(task.getResult(ApiException.class));
            } catch (ApiException e) {
                finishWithError(errorCodeForStatus(e.getStatusCode()), e.toString());
            } catch (RuntimeExecutionException e2) {
                finishWithError(ERROR_REASON_EXCEPTION, e2.toString());
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void clearAuthCache(@NonNull String str) {
            try {
                GoogleAuthUtil.clearToken(this.context, str);
            } catch (Exception e) {
                throw new Messages.FlutterError(ERROR_REASON_EXCEPTION, e.getMessage(), null);
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void disconnect(@NonNull Messages.VoidResult voidResult) {
            checkAndSetPendingVoidOperation("disconnect", voidResult);
            this.signInClient.revokeAccess().addOnCompleteListener(new OnCompleteListener() { // from class: io.flutter.plugins.googlesignin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    GoogleSignInPlugin.Delegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GoogleSignInPlugin.Delegate.this, task);
                }
            });
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void getAccessToken(@NonNull final String str, @NonNull final Boolean bool, @NonNull final Messages.Result<String> result) {
            try {
                Account account = new Account(str, "com.google");
                result.success(GoogleAuthUtil.getToken(this.context, account, "oauth2:" + Wwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(" ", this.requestedScopes)));
            } catch (UserRecoverableAuthException e) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.flutter.plugins.googlesignin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        GoogleSignInPlugin.Delegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GoogleSignInPlugin.Delegate.this, bool, result, e, str);
                    }
                });
            } catch (Exception e2) {
                result.error(new Messages.FlutterError(ERROR_REASON_EXCEPTION, e2.getMessage(), null));
            }
        }

        @Nullable
        public Activity getActivity() {
            return this.activity;
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void init(@NonNull Messages.InitParams initParams) {
            GoogleSignInOptions.Builder builder;
            int identifier;
            try {
                int i = AnonymousClass1.$SwitchMap$io$flutter$plugins$googlesignin$Messages$SignInType[initParams.getSignInType().ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        builder = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestEmail();
                    } else {
                        throw new IllegalStateException("Unknown signInOption");
                    }
                } else {
                    builder = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_GAMES_SIGN_IN);
                }
                String serverClientId = initParams.getServerClientId();
                if (!isNullOrEmpty(initParams.getClientId()) && isNullOrEmpty(serverClientId)) {
                    serverClientId = initParams.getClientId();
                }
                if (isNullOrEmpty(serverClientId) && (identifier = this.context.getResources().getIdentifier("default_web_client_id", TypedValues.Custom.S_STRING, this.context.getPackageName())) != 0) {
                    serverClientId = this.context.getString(identifier);
                }
                if (!isNullOrEmpty(serverClientId)) {
                    builder.requestIdToken(serverClientId);
                    builder.requestServerAuthCode(serverClientId, initParams.getForceCodeForRefreshToken().booleanValue());
                }
                List<String> scopes = initParams.getScopes();
                this.requestedScopes = scopes;
                for (String str : scopes) {
                    builder.requestScopes(new Scope(str), new Scope[0]);
                }
                if (!isNullOrEmpty(initParams.getHostedDomain())) {
                    builder.setHostedDomain(initParams.getHostedDomain());
                }
                String forceAccountName = initParams.getForceAccountName();
                if (!isNullOrEmpty(forceAccountName)) {
                    builder.setAccountName(forceAccountName);
                }
                this.signInClient = this.googleSignInWrapper.getClient(this.context, builder.build());
            } catch (Exception e) {
                throw new Messages.FlutterError(ERROR_REASON_EXCEPTION, e.getMessage(), null);
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        @NonNull
        public Boolean isSignedIn() {
            boolean z;
            if (GoogleSignIn.getLastSignedInAccount(this.context) != null) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }

        @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
        public boolean onActivityResult(int i, int i2, @Nullable Intent intent) {
            PendingOperation pendingOperation = this.pendingOperation;
            boolean z = false;
            if (pendingOperation == null) {
                return false;
            }
            switch (i) {
                case REQUEST_CODE_SIGNIN /* 53293 */:
                    if (intent != null) {
                        onSignInResult(GoogleSignIn.getSignedInAccountFromIntent(intent));
                    } else {
                        finishWithError(ERROR_REASON_SIGN_IN_FAILED, "Signin failed");
                    }
                    return true;
                case REQUEST_CODE_RECOVER_AUTH /* 53294 */:
                    if (i2 == -1) {
                        Messages.Result<String> result = pendingOperation.stringResult;
                        Objects.requireNonNull(result);
                        Object obj = this.pendingOperation.data;
                        Objects.requireNonNull(obj);
                        this.pendingOperation = null;
                        getAccessToken((String) obj, Boolean.FALSE, result);
                    } else {
                        finishWithError(ERROR_FAILURE_TO_RECOVER_AUTH, "Failed attempt to recover authentication");
                    }
                    return true;
                case REQUEST_CODE_REQUEST_SCOPE /* 53295 */:
                    if (i2 == -1) {
                        z = true;
                    }
                    finishWithBoolean(Boolean.valueOf(z));
                    return true;
                default:
                    return false;
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void requestScopes(@NonNull List<String> list, @NonNull Messages.Result<Boolean> result) {
            checkAndSetPendingBoolOperation("requestScopes", result);
            GoogleSignInAccount lastSignedInAccount = this.googleSignInWrapper.getLastSignedInAccount(this.context);
            if (lastSignedInAccount == null) {
                finishWithError(ERROR_REASON_SIGN_IN_REQUIRED, "No account to grant scopes.");
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                Scope scope = new Scope(str);
                if (!this.googleSignInWrapper.hasPermissions(lastSignedInAccount, scope)) {
                    arrayList.add(scope);
                }
            }
            if (arrayList.isEmpty()) {
                finishWithBoolean(Boolean.TRUE);
            } else {
                this.googleSignInWrapper.requestPermissions(getActivity(), REQUEST_CODE_REQUEST_SCOPE, lastSignedInAccount, (Scope[]) arrayList.toArray(new Scope[0]));
            }
        }

        public void setActivity(@Nullable Activity activity) {
            this.activity = activity;
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void signIn(@NonNull Messages.Result<Messages.UserData> result) {
            if (getActivity() != null) {
                checkAndSetPendingSignInOperation("signIn", result);
                getActivity().startActivityForResult(this.signInClient.getSignInIntent(), REQUEST_CODE_SIGNIN);
                return;
            }
            throw new IllegalStateException("signIn needs a foreground activity");
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void signInSilently(@NonNull Messages.Result<Messages.UserData> result) {
            checkAndSetPendingSignInOperation("signInSilently", result);
            Task<GoogleSignInAccount> silentSignIn = this.signInClient.silentSignIn();
            if (silentSignIn.isComplete()) {
                onSignInResult(silentSignIn);
            } else {
                silentSignIn.addOnCompleteListener(new OnCompleteListener() { // from class: io.flutter.plugins.googlesignin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        GoogleSignInPlugin.Delegate.this.onSignInResult(task);
                    }
                });
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void signOut(@NonNull Messages.VoidResult voidResult) {
            checkAndSetPendingVoidOperation("signOut", voidResult);
            this.signInClient.signOut().addOnCompleteListener(new OnCompleteListener() { // from class: io.flutter.plugins.googlesignin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    GoogleSignInPlugin.Delegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GoogleSignInPlugin.Delegate.this, task);
                }
            });
        }
    }

    private void attachToActivity(ActivityPluginBinding activityPluginBinding) {
        this.activityPluginBinding = activityPluginBinding;
        activityPluginBinding.addActivityResultListener(this.delegate);
        this.delegate.setActivity(activityPluginBinding.getActivity());
    }

    private void dispose() {
        this.delegate = null;
        BinaryMessenger binaryMessenger = this.messenger;
        if (binaryMessenger != null) {
            Messages.GoogleSignInApi.CC.Wwwwwwwwwwwwwwwwwwwwwwww(binaryMessenger, null);
            this.messenger = null;
        }
    }

    private void disposeActivity() {
        this.activityPluginBinding.removeActivityResultListener(this.delegate);
        this.delegate.setActivity(null);
        this.activityPluginBinding = null;
    }

    @VisibleForTesting
    public void initInstance(@NonNull BinaryMessenger binaryMessenger, @NonNull Context context, @NonNull GoogleSignInWrapper googleSignInWrapper) {
        this.messenger = binaryMessenger;
        Delegate delegate = new Delegate(context, googleSignInWrapper);
        this.delegate = delegate;
        Messages.GoogleSignInApi.CC.Wwwwwwwwwwwwwwwwwwwwwwww(binaryMessenger, delegate);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NonNull ActivityPluginBinding activityPluginBinding) {
        attachToActivity(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        initInstance(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext(), new GoogleSignInWrapper());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        disposeActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        disposeActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        dispose();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding activityPluginBinding) {
        attachToActivity(activityPluginBinding);
    }
}
