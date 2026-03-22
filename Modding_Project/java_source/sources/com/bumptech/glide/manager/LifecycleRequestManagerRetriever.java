package com.bumptech.glide.manager;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.util.Util;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class LifecycleRequestManagerRetriever {
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestManagerRetriever.RequestManagerFactory f4935Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<androidx.lifecycle.Lifecycle, RequestManager> f4936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public final class SupportRequestManagerTreeNode implements RequestManagerTreeNode {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final FragmentManager f4940Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SupportRequestManagerTreeNode(FragmentManager fragmentManager) {
            this.f4940Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fragmentManager;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FragmentManager fragmentManager, Set<RequestManager> set) {
            List<Fragment> fragments = fragmentManager.getFragments();
            int size = fragments.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = fragments.get(i);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fragment.getChildFragmentManager(), set);
                RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LifecycleRequestManagerRetriever.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fragment.getLifecycle());
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    set.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
        }

        @Override // com.bumptech.glide.manager.RequestManagerTreeNode
        @NonNull
        public Set<RequestManager> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            HashSet hashSet = new HashSet();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4940Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, hashSet);
            return hashSet;
        }
    }

    public LifecycleRequestManagerRetriever(@NonNull RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.f4935Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestManagerFactory;
    }

    public RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Glide glide, final androidx.lifecycle.Lifecycle lifecycle, FragmentManager fragmentManager, boolean z) {
        Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(lifecycle);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycle);
            RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f4935Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(glide, lifecycleLifecycle, new SupportRequestManagerTreeNode(fragmentManager), context);
            this.f4936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(lifecycle, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
            lifecycleLifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new LifecycleListener() { // from class: com.bumptech.glide.manager.LifecycleRequestManagerRetriever.1
                @Override // com.bumptech.glide.manager.LifecycleListener
                public void onDestroy() {
                    LifecycleRequestManagerRetriever.this.f4936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(lifecycle);
                }

                @Override // com.bumptech.glide.manager.LifecycleListener
                public void onStart() {
                }

                @Override // com.bumptech.glide.manager.LifecycleListener
                public void onStop() {
                }
            });
            if (z) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.onStart();
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public RequestManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(androidx.lifecycle.Lifecycle lifecycle) {
        Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return this.f4936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(lifecycle);
    }
}
