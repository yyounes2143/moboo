package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes3.dex */
public class RequestManagerFragment extends Fragment {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Fragment f4941Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestManagerFragment f4942Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestManager f4943Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<RequestManagerFragment> f4944Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestManagerTreeNode f4945Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ActivityFragmentLifecycle f4946Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class FragmentRequestManagerTreeNode implements RequestManagerTreeNode {
        public FragmentRequestManagerTreeNode() {
        }

        @Override // com.bumptech.glide.manager.RequestManagerTreeNode
        @NonNull
        public Set<RequestManager> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Set<RequestManagerFragment> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RequestManagerFragment.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            HashSet hashSet = new HashSet(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size());
            for (RequestManagerFragment requestManagerFragment : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                if (requestManagerFragment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    hashSet.add(requestManagerFragment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + "}";
        }
    }

    public RequestManagerFragment() {
        this(new ActivityFragmentLifecycle());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        RequestManagerFragment requestManagerFragment = this.f4942Wwwwwwwwwwwwwwwwwwwww;
        if (requestManagerFragment != null) {
            requestManagerFragment.Wwwwwwwwwwwwwwwwwwwwwwwwww(this);
            this.f4942Wwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable RequestManager requestManager) {
        this.f4943Wwwwwwwwwwwwwwwwwwwwww = requestManager;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Fragment fragment) {
        this.f4941Wwwwwwwwwwwwwwwwwwww = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(fragment.getActivity());
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(RequestManagerFragment requestManagerFragment) {
        this.f4944Wwwwwwwwwwwwwwwwwwwwwww.remove(requestManagerFragment);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Activity activity) {
        Wwwwwwwwwwwwwwwwwwwwwww();
        RequestManagerFragment Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity).Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(activity);
        this.f4942Wwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (!equals(Wwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            this.f4942Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
    }

    @TargetApi(17)
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 != null) {
                if (parentFragment2.equals(parentFragment)) {
                    return true;
                }
                fragment = fragment.getParentFragment();
            } else {
                return false;
            }
        }
    }

    @NonNull
    public RequestManagerTreeNode Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4945Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4943Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    @TargetApi(17)
    public final Fragment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        return this.f4941Wwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public ActivityFragmentLifecycle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4946Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    @TargetApi(17)
    public Set<RequestManagerFragment> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (equals(this.f4942Wwwwwwwwwwwwwwwwwwwww)) {
            return Collections.unmodifiableSet(this.f4944Wwwwwwwwwwwwwwwwwwwwwww);
        }
        if (this.f4942Wwwwwwwwwwwwwwwwwwwww != null) {
            HashSet hashSet = new HashSet();
            for (RequestManagerFragment requestManagerFragment : this.f4942Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww(requestManagerFragment.getParentFragment())) {
                    hashSet.add(requestManagerFragment);
                }
            }
            return Collections.unmodifiableSet(hashSet);
        }
        return Collections.EMPTY_SET;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestManagerFragment requestManagerFragment) {
        this.f4944Wwwwwwwwwwwwwwwwwwwwwww.add(requestManagerFragment);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
        } catch (IllegalStateException unused) {
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f4946Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        Wwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f4946Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f4946Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + "}";
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public RequestManagerFragment(@NonNull ActivityFragmentLifecycle activityFragmentLifecycle) {
        this.f4945Wwwwwwwwwwwwwwwwwwwwwwww = new FragmentRequestManagerTreeNode();
        this.f4944Wwwwwwwwwwwwwwwwwwwwwww = new HashSet();
        this.f4946Wwwwwwwwwwwwwwwwwwwwwwwww = activityFragmentLifecycle;
    }
}
