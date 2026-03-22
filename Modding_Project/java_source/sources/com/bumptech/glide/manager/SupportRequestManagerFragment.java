package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class SupportRequestManagerFragment extends Fragment {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Fragment f4989Wwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestManager f4990Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SupportRequestManagerFragment f4991Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<SupportRequestManagerFragment> f4992Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestManagerTreeNode f4993Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ActivityFragmentLifecycle f4994Wwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class SupportFragmentRequestManagerTreeNode implements RequestManagerTreeNode {
        public SupportFragmentRequestManagerTreeNode() {
        }

        @Override // com.bumptech.glide.manager.RequestManagerTreeNode
        @NonNull
        public Set<RequestManager> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Set<SupportRequestManagerFragment> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SupportRequestManagerFragment.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            HashSet hashSet = new HashSet(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size());
            for (SupportRequestManagerFragment supportRequestManagerFragment : Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                if (supportRequestManagerFragment.Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    hashSet.add(supportRequestManagerFragment.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + SupportRequestManagerFragment.this + "}";
        }
    }

    public SupportRequestManagerFragment() {
        this(new ActivityFragmentLifecycle());
    }

    @Nullable
    public static FragmentManager Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    public final void Wwwwwwwwwwwwwwwwwwww() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f4991Wwwwwwwwwwwwwwwwwwwww;
        if (supportRequestManagerFragment != null) {
            supportRequestManagerFragment.Wwwwwwwwwwwwwwwwwwwwww(this);
            this.f4991Wwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwww(@Nullable Fragment fragment) {
        FragmentManager Wwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f4989Wwwwwwwwwwwwwwwwwww = fragment;
        if (fragment != null && fragment.getContext() != null && (Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(fragment)) != null) {
            Wwwwwwwwwwwwwwwwwwwwwww(fragment.getContext(), Wwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f4992Wwwwwwwwwwwwwwwwwwwwww.remove(supportRequestManagerFragment);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        Wwwwwwwwwwwwwwwwwwww();
        SupportRequestManagerFragment Wwwwwwwwwwwwwwwwwwwwwwww2 = Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(fragmentManager);
        this.f4991Wwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwww2;
        if (!equals(Wwwwwwwwwwwwwwwwwwwwwwww2)) {
            this.f4991Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww(@NonNull Fragment fragment) {
        Fragment Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment != null) {
                if (parentFragment.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    return true;
                }
                fragment = fragment.getParentFragment();
            } else {
                return false;
            }
        }
    }

    @Nullable
    public RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4990Wwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Fragment Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        return this.f4989Wwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public ActivityFragmentLifecycle Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4994Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public Set<SupportRequestManagerFragment> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f4991Wwwwwwwwwwwwwwwwwwwww;
        if (supportRequestManagerFragment == null) {
            return Collections.EMPTY_SET;
        }
        if (equals(supportRequestManagerFragment)) {
            return Collections.unmodifiableSet(this.f4992Wwwwwwwwwwwwwwwwwwwwww);
        }
        HashSet hashSet = new HashSet();
        for (SupportRequestManagerFragment supportRequestManagerFragment2 : this.f4991Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            if (Wwwwwwwwwwwwwwwwwwwwwwww(supportRequestManagerFragment2.Wwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                hashSet.add(supportRequestManagerFragment2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f4992Wwwwwwwwwwwwwwwwwwwwww.add(supportRequestManagerFragment);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(this);
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwwwwwwwwww(getContext(), Wwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (IllegalStateException unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f4994Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwww();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f4989Wwwwwwwwwwwwwwwwwww = null;
        Wwwwwwwwwwwwwwwwwwww();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f4994Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f4994Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + Wwwwwwwwwwwwwwwwwwwwwwwwwww() + "}";
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public SupportRequestManagerFragment(@NonNull ActivityFragmentLifecycle activityFragmentLifecycle) {
        this.f4993Wwwwwwwwwwwwwwwwwwwwwww = new SupportFragmentRequestManagerTreeNode();
        this.f4992Wwwwwwwwwwwwwwwwwwwwww = new HashSet();
        this.f4994Wwwwwwwwwwwwwwwwwwwwwwww = activityFragmentLifecycle;
    }
}
