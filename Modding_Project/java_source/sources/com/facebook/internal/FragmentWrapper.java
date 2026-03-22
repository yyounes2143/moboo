package com.facebook.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eR(\u0010\u0014\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R(\u0010\u0018\u001a\u0004\u0018\u00010\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/facebook/internal/FragmentWrapper;", "", "Landroidx/fragment/app/Fragment;", "fragment", "<init>", "(Landroidx/fragment/app/Fragment;)V", "Landroid/app/Fragment;", "(Landroid/app/Fragment;)V", "Landroid/content/Intent;", "intent", "", "requestCode", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;I)V", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/fragment/app/Fragment;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroidx/fragment/app/Fragment;", "supportFragment", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Fragment;", "()Landroid/app/Fragment;", "nativeFragment", "Landroid/app/Activity;", "()Landroid/app/Activity;", "activity", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FragmentWrapper {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Fragment f6728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public androidx.fragment.app.Fragment f6729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public FragmentWrapper(@NotNull androidx.fragment.app.Fragment fragment) {
        this.f6729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fragment;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Intent intent, int i) {
        androidx.fragment.app.Fragment fragment = this.f6729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (fragment != null) {
            if (fragment != null) {
                fragment.startActivityForResult(intent, i);
                return;
            }
            return;
        }
        Fragment fragment2 = this.f6728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (fragment2 == null) {
            return;
        }
        fragment2.startActivityForResult(intent, i);
    }

    @Nullable
    public final androidx.fragment.app.Fragment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Fragment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        androidx.fragment.app.Fragment fragment = this.f6729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (fragment != null) {
            if (fragment == null) {
                return null;
            }
            return fragment.getActivity();
        }
        Fragment fragment2 = this.f6728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (fragment2 == null) {
            return null;
        }
        return fragment2.getActivity();
    }

    public FragmentWrapper(@NotNull Fragment fragment) {
        this.f6728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fragment;
    }
}
