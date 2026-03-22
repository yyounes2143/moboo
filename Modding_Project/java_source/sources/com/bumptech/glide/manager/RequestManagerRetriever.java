package com.bumptech.glide.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import com.bumptech.glide.util.Util;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RequestManagerRetriever implements Handler.Callback {

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public static final RequestManagerFactory f4948Wwwwwwwwwwwwwww = new RequestManagerFactory() { // from class: com.bumptech.glide.manager.RequestManagerRetriever.1
        @Override // com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory
        @NonNull
        public RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context) {
            return new RequestManager(glide, lifecycle, requestManagerTreeNode, context);
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LifecycleRequestManagerRetriever f4949Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FrameWaiter f4950Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestManagerFactory f4954Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f4955Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile RequestManager f4958Wwwwwwwwwwwwwwwwwwwwwwwww;
    @VisibleForTesting

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<FragmentManager, RequestManagerFragment> f4957Wwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
    @VisibleForTesting

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<androidx.fragment.app.FragmentManager, SupportRequestManagerFragment> f4956Wwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayMap<View, Fragment> f4953Wwwwwwwwwwwwwwwwwwww = new ArrayMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayMap<View, android.app.Fragment> f4952Wwwwwwwwwwwwwwwwwww = new ArrayMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bundle f4951Wwwwwwwwwwwwwwwwww = new Bundle();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface RequestManagerFactory {
        @NonNull
        RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context);
    }

    public RequestManagerRetriever(@Nullable RequestManagerFactory requestManagerFactory, GlideExperiments glideExperiments) {
        requestManagerFactory = requestManagerFactory == null ? f4948Wwwwwwwwwwwwwww : requestManagerFactory;
        this.f4954Wwwwwwwwwwwwwwwwwwwww = requestManagerFactory;
        this.f4955Wwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper(), this);
        this.f4949Wwwwwwwwwwwwwwww = new LifecycleRequestManagerRetriever(requestManagerFactory);
        this.f4950Wwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(glideExperiments);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwww(Context context) {
        Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isFinishing()) {
            return false;
        }
        return true;
    }

    @Nullable
    public static Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static FrameWaiter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideExperiments glideExperiments) {
        if (HardwareConfigState.f4783Wwwwwwwwwwwwwwwwwwwwwwwwwww && HardwareConfigState.f4784Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (glideExperiments.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideBuilder.WaitForFramesAfterTrimMemory.class)) {
                return new FirstFrameAndAfterTrimMemoryWaiter();
            }
            return new FirstFrameWaiter();
        }
        return new DoNothingFirstFrameWaiter();
    }

    @TargetApi(17)
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Activity activity) {
        if (!activity.isDestroyed()) {
            return;
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    public final boolean Wwwwwwwwwwwwwwwwwwww(androidx.fragment.app.FragmentManager fragmentManager, boolean z) {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f4956Wwwwwwwwwwwwwwwwwwwwwww.get(fragmentManager);
        SupportRequestManagerFragment supportRequestManagerFragment2 = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (supportRequestManagerFragment2 == supportRequestManagerFragment) {
            return true;
        }
        if (supportRequestManagerFragment2 != null && supportRequestManagerFragment2.Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            throw new IllegalStateException("We've added two fragments with requests! Old: " + supportRequestManagerFragment2 + " New: " + supportRequestManagerFragment);
        } else if (!z && !fragmentManager.isDestroyed()) {
            FragmentTransaction add = fragmentManager.beginTransaction().add(supportRequestManagerFragment, "com.bumptech.glide.manager");
            if (supportRequestManagerFragment2 != null) {
                add.remove(supportRequestManagerFragment2);
            }
            add.commitNowAllowingStateLoss();
            this.f4955Wwwwwwwwwwwwwwwwwwwwww.obtainMessage(2, 1, 0, fragmentManager).sendToTarget();
            return false;
        } else {
            fragmentManager.isDestroyed();
            supportRequestManagerFragment.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return true;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwww(FragmentManager fragmentManager, boolean z) {
        RequestManagerFragment requestManagerFragment = this.f4957Wwwwwwwwwwwwwwwwwwwwwwww.get(fragmentManager);
        RequestManagerFragment requestManagerFragment2 = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (requestManagerFragment2 == requestManagerFragment) {
            return true;
        }
        if (requestManagerFragment2 != null && requestManagerFragment2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            throw new IllegalStateException("We've added two fragments with requests! Old: " + requestManagerFragment2 + " New: " + requestManagerFragment);
        } else if (!z && !fragmentManager.isDestroyed()) {
            android.app.FragmentTransaction add = fragmentManager.beginTransaction().add(requestManagerFragment, "com.bumptech.glide.manager");
            if (requestManagerFragment2 != null) {
                add.remove(requestManagerFragment2);
            }
            add.commitAllowingStateLoss();
            this.f4955Wwwwwwwwwwwwwwwwwwwwww.obtainMessage(1, 1, 0, fragmentManager).sendToTarget();
            return false;
        } else {
            if (Log.isLoggable("RMRetriever", 5)) {
                fragmentManager.isDestroyed();
            }
            requestManagerFragment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return true;
        }
    }

    @NonNull
    public final SupportRequestManagerFragment Wwwwwwwwwwwwwwwwwwwwwww(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment) {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f4956Wwwwwwwwwwwwwwwwwwwwwww.get(fragmentManager);
        if (supportRequestManagerFragment == null) {
            SupportRequestManagerFragment supportRequestManagerFragment2 = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
            if (supportRequestManagerFragment2 == null) {
                SupportRequestManagerFragment supportRequestManagerFragment3 = new SupportRequestManagerFragment();
                supportRequestManagerFragment3.Wwwwwwwwwwwwwwwwwwwww(fragment);
                this.f4956Wwwwwwwwwwwwwwwwwwwwwww.put(fragmentManager, supportRequestManagerFragment3);
                fragmentManager.beginTransaction().add(supportRequestManagerFragment3, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f4955Wwwwwwwwwwwwwwwwwwwwww.obtainMessage(2, fragmentManager).sendToTarget();
                return supportRequestManagerFragment3;
            }
            return supportRequestManagerFragment2;
        }
        return supportRequestManagerFragment;
    }

    @NonNull
    public SupportRequestManagerFragment Wwwwwwwwwwwwwwwwwwwwwwww(androidx.fragment.app.FragmentManager fragmentManager) {
        return Wwwwwwwwwwwwwwwwwwwwwww(fragmentManager, null);
    }

    @NonNull
    public final RequestManagerFragment Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment) {
        RequestManagerFragment requestManagerFragment = this.f4957Wwwwwwwwwwwwwwwwwwwwwwww.get(fragmentManager);
        if (requestManagerFragment == null) {
            RequestManagerFragment requestManagerFragment2 = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
            if (requestManagerFragment2 == null) {
                RequestManagerFragment requestManagerFragment3 = new RequestManagerFragment();
                requestManagerFragment3.Wwwwwwwwwwwwwwwwwwwwwwwww(fragment);
                this.f4957Wwwwwwwwwwwwwwwwwwwwwwww.put(fragmentManager, requestManagerFragment3);
                fragmentManager.beginTransaction().add(requestManagerFragment3, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f4955Wwwwwwwwwwwwwwwwwwwwww.obtainMessage(1, fragmentManager).sendToTarget();
                return requestManagerFragment3;
            }
            return requestManagerFragment2;
        }
        return requestManagerFragment;
    }

    @NonNull
    @Deprecated
    public RequestManagerFragment Wwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity) {
        return Wwwwwwwwwwwwwwwwwwwwwwwww(activity.getFragmentManager(), null);
    }

    @NonNull
    public final RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        if (this.f4958Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
            synchronized (this) {
                try {
                    if (this.f4958Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        this.f4958Wwwwwwwwwwwwwwwwwwwwwwwww = this.f4954Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getApplicationContext()), new ApplicationLifecycle(), new EmptyRequestManagerTreeNode(), context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return this.f4958Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull FragmentActivity fragmentActivity) {
        if (Util.Wwwwwwwwwwwwwwwww()) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(fragmentActivity.getApplicationContext());
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fragmentActivity);
        this.f4950Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fragmentActivity);
        boolean Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(fragmentActivity);
        return this.f4949Wwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fragmentActivity, Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fragmentActivity.getApplicationContext()), fragmentActivity.getLifecycle(), fragmentActivity.getSupportFragmentManager(), Wwwwwwwwwwwwwwwwwwwwww2);
    }

    @NonNull
    public RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        if (context != null) {
            if (Util.Wwwwwwwwwwwwwwww() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwww((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(contextWrapper.getBaseContext());
                    }
                }
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    @NonNull
    @Deprecated
    public RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Activity activity) {
        if (Util.Wwwwwwwwwwwwwwwww()) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity.getApplicationContext());
        }
        if (activity instanceof FragmentActivity) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww((FragmentActivity) activity);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
        this.f4950Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity, activity.getFragmentManager(), null, Wwwwwwwwwwwwwwwwwwwwww(activity));
    }

    @NonNull
    @Deprecated
    public final RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context, @NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z) {
        RequestManagerFragment Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(fragmentManager, fragment);
        RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4954Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context), Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), context);
            if (z) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.onStart();
            }
            Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        boolean z;
        FragmentManager fragmentManager;
        FragmentManager fragmentManager2;
        boolean z2 = true;
        boolean z3 = false;
        if (message.arg1 == 1) {
            z = true;
        } else {
            z = false;
        }
        int i = message.what;
        Object obj = null;
        if (i != 1) {
            if (i != 2) {
                z2 = false;
                fragmentManager2 = null;
            } else {
                androidx.fragment.app.FragmentManager fragmentManager3 = (androidx.fragment.app.FragmentManager) message.obj;
                if (Wwwwwwwwwwwwwwwwwwww(fragmentManager3, z)) {
                    obj = this.f4956Wwwwwwwwwwwwwwwwwwwwwww.remove(fragmentManager3);
                    fragmentManager = fragmentManager3;
                    z3 = true;
                    fragmentManager2 = fragmentManager;
                }
                z3 = true;
                z2 = false;
                fragmentManager2 = null;
            }
        } else {
            FragmentManager fragmentManager4 = (FragmentManager) message.obj;
            if (Wwwwwwwwwwwwwwwwwwwww(fragmentManager4, z)) {
                obj = this.f4957Wwwwwwwwwwwwwwwwwwwwwwww.remove(fragmentManager4);
                fragmentManager = fragmentManager4;
                z3 = true;
                fragmentManager2 = fragmentManager;
            }
            z3 = true;
            z2 = false;
            fragmentManager2 = null;
        }
        if (Log.isLoggable("RMRetriever", 5) && z2 && obj == null) {
            Objects.toString(fragmentManager2);
        }
        return z3;
    }
}
