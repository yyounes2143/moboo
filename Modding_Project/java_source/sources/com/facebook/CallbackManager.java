package com.facebook;

import android.content.Intent;
import com.facebook.internal.CallbackManagerImpl;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001:\u0002\t\nJ\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\u000b"}, d2 = {"Lcom/facebook/CallbackManager;", "", "onActivityResult", "", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "ActivityResultParameters", "Factory", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface CallbackManager {

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\rR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0013\u001a\u0004\b\u0016\u0010\rR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/facebook/CallbackManager$ActivityResultParameters;", "", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "<init>", "(IILandroid/content/Intent;)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "getRequestCode", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getResultCode", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Intent;", "getData", "()Landroid/content/Intent;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ActivityResultParameters {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Intent f5945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ActivityResultParameters(int i, int i2, @Nullable Intent intent) {
            this.f5947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f5946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
            this.f5945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = intent;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ActivityResultParameters)) {
                return false;
            }
            ActivityResultParameters activityResultParameters = (ActivityResultParameters) obj;
            if (this.f5947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == activityResultParameters.f5947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == activityResultParameters.f5946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f5945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, activityResultParameters.f5945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int i = ((this.f5947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * 31) + this.f5946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31;
            Intent intent = this.f5945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (intent == null) {
                hashCode = 0;
            } else {
                hashCode = intent.hashCode();
            }
            return i + hashCode;
        }

        @NotNull
        public String toString() {
            return "ActivityResultParameters(requestCode=" + this.f5947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", resultCode=" + this.f5946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", data=" + this.f5945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/CallbackManager$Factory;", "", "<init>", "()V", "Lcom/facebook/CallbackManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/CallbackManager;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory {
        @NotNull
        public static final Factory INSTANCE = new Factory();

        @JvmStatic
        @NotNull
        public static final CallbackManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new CallbackManagerImpl();
        }
    }

    boolean onActivityResult(int i, int i2, @Nullable Intent intent);
}
