package com.didi.drouter.router;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.FragmentActivity;
import com.didi.drouter.router.RouterCallback;
import com.didi.drouter.utils.RouterLogger;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class ActivityCompat2 {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Active f5704Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicInteger f5703Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicInteger(0);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final SparseArray<Pair<WeakReference<Activity>, RouterCallback.ActivityCallback>> f5702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SparseArray<>();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Active {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity, Intent intent, int i);

        ActivityCompat2 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void remove();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class HolderFragment extends Fragment implements Active {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f5706Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Intent f5707Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ActivityCompat2 f5708Wwwwwwwwwwwwwwwwwwwwwwwww = new ActivityCompat2(this);

        @Override // com.didi.drouter.router.ActivityCompat2.Active
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Intent intent = this.f5707Wwwwwwwwwwwwwwwwwwwwwwww;
            if (intent == null) {
                return;
            }
            startActivityForResult(intent, this.f5706Wwwwwwwwwwwwwwwwwwwwwww, intent.getBundleExtra("router_start_activity_options"));
        }

        @Override // com.didi.drouter.router.ActivityCompat2.Active
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity, Intent intent, int i) {
            this.f5707Wwwwwwwwwwwwwwwwwwwwwwww = intent;
            this.f5706Wwwwwwwwwwwwwwwwwwwwwww = i;
            FragmentTransaction beginTransaction = activity.getFragmentManager().beginTransaction();
            beginTransaction.add(this, "DRouterEmptyFragment");
            beginTransaction.commit();
        }

        @Override // com.didi.drouter.router.ActivityCompat2.Active
        public ActivityCompat2 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5708Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.app.Fragment
        public void onActivityResult(int i, int i2, Intent intent) {
            super.onActivityResult(i, i2, intent);
            this.f5708Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getActivity(), i2, intent);
        }

        @Override // android.app.Fragment
        public void onCreate(@Nullable Bundle bundle) {
            super.onCreate(bundle);
            this.f5708Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
        }

        @Override // android.app.Fragment
        public void onDestroy() {
            super.onDestroy();
            this.f5708Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // android.app.Fragment
        @SensorsDataInstrumented
        public void onHiddenChanged(boolean z) {
            super.onHiddenChanged(z);
            FragmentTrackHelper.trackOnHiddenChanged(this, z);
        }

        @Override // android.app.Fragment
        @SensorsDataInstrumented
        public void onPause() {
            super.onPause();
            FragmentTrackHelper.trackFragmentPause(this);
        }

        @Override // android.app.Fragment
        @SensorsDataInstrumented
        public void onResume() {
            super.onResume();
            FragmentTrackHelper.trackFragmentResume(this);
        }

        @Override // android.app.Fragment
        public void onSaveInstanceState(Bundle bundle) {
            super.onSaveInstanceState(bundle);
            this.f5708Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
        }

        @Override // android.app.Fragment
        @SensorsDataInstrumented
        public void onViewCreated(View view, Bundle bundle) {
            super.onViewCreated(view, bundle);
            FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
        }

        @Override // com.didi.drouter.router.ActivityCompat2.Active
        public void remove() {
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager != null) {
                FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
                beginTransaction.remove(this);
                beginTransaction.commit();
            }
        }

        @Override // android.app.Fragment
        @SensorsDataInstrumented
        public void setUserVisibleHint(boolean z) {
            super.setUserVisibleHint(z);
            FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class HolderFragmentV4 extends androidx.fragment.app.Fragment implements Active {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f5709Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Intent f5710Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ActivityCompat2 f5711Wwwwwwwwwwwwwwwwwwwwwwww = new ActivityCompat2(this);

        @Override // com.didi.drouter.router.ActivityCompat2.Active
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Intent intent = this.f5710Wwwwwwwwwwwwwwwwwwwwwww;
            if (intent == null) {
                return;
            }
            startActivityForResult(intent, this.f5709Wwwwwwwwwwwwwwwwwwwwww, intent.getBundleExtra("router_start_activity_options"));
        }

        @Override // com.didi.drouter.router.ActivityCompat2.Active
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity, Intent intent, int i) {
            this.f5710Wwwwwwwwwwwwwwwwwwwwwww = intent;
            this.f5709Wwwwwwwwwwwwwwwwwwwwww = i;
            androidx.fragment.app.FragmentTransaction beginTransaction = ((FragmentActivity) activity).getSupportFragmentManager().beginTransaction();
            beginTransaction.add(this, "DRouterEmptyFragment");
            beginTransaction.commit();
        }

        @Override // com.didi.drouter.router.ActivityCompat2.Active
        public ActivityCompat2 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5711Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // androidx.fragment.app.Fragment
        public void onActivityResult(int i, int i2, Intent intent) {
            super.onActivityResult(i, i2, intent);
            this.f5711Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getActivity(), i2, intent);
        }

        @Override // androidx.fragment.app.Fragment
        public void onCreate(@Nullable Bundle bundle) {
            super.onCreate(bundle);
            this.f5711Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
        }

        @Override // androidx.fragment.app.Fragment
        public void onDestroy() {
            super.onDestroy();
            this.f5711Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
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
            FragmentTrackHelper.trackFragmentResume(this);
        }

        @Override // androidx.fragment.app.Fragment
        public void onSaveInstanceState(@NonNull Bundle bundle) {
            super.onSaveInstanceState(bundle);
            this.f5711Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
        }

        @Override // androidx.fragment.app.Fragment
        @SensorsDataInstrumented
        public void onViewCreated(View view, Bundle bundle) {
            super.onViewCreated(view, bundle);
            FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
        }

        @Override // com.didi.drouter.router.ActivityCompat2.Active
        public void remove() {
            androidx.fragment.app.FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager != null) {
                androidx.fragment.app.FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
                beginTransaction.remove(this);
                beginTransaction.commit();
            }
        }

        @Override // androidx.fragment.app.Fragment
        @SensorsDataInstrumented
        public void setUserVisibleHint(boolean z) {
            super.setUserVisibleHint(z);
            FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Activity activity, @NonNull Intent intent, int i, RouterCallback.ActivityCallback activityCallback) {
        Active holderFragment;
        int incrementAndGet = f5703Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.incrementAndGet();
        f5702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(incrementAndGet, new Pair<>(new WeakReference(activity), activityCallback));
        if (activity instanceof FragmentActivity) {
            holderFragment = new HolderFragmentV4();
        } else {
            holderFragment = new HolderFragment();
        }
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("HoldFragment start, put %s callback and page | isV4: %s", Integer.valueOf(incrementAndGet), Boolean.valueOf(holderFragment instanceof HolderFragmentV4));
        holderFragment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().f5705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = incrementAndGet;
        holderFragment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity, intent, i);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
        bundle.putInt("router_cb_tag", this.f5705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle) {
        if (bundle != null) {
            this.f5705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle.getInt("router_cb_tag");
        }
        this.f5704Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity, int i, Intent intent) {
        Object obj;
        RouterCallback.ActivityCallback activityCallback;
        SparseArray<Pair<WeakReference<Activity>, RouterCallback.ActivityCallback>> sparseArray = f5702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Pair<WeakReference<Activity>, RouterCallback.ActivityCallback> pair = sparseArray.get(this.f5705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (pair != null && (activityCallback = (RouterCallback.ActivityCallback) pair.second) != null) {
            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("HoldFragment ActivityResult callback success", new Object[0]);
            activityCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, intent);
        }
        if (pair == null || (obj = pair.first) == null || ((WeakReference) obj).get() != activity) {
            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("HoldFragment onActivityResult warn, for host activity changed, but still callback last host", new Object[0]);
        }
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("HoldFragment remove %s callback and page", Integer.valueOf(this.f5705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        sparseArray.remove(this.f5705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f5704Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove();
    }

    public ActivityCompat2(Active active) {
        this.f5704Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = active;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
    }
}
