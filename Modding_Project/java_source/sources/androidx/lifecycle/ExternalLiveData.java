package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public class ExternalLiveData<T> extends MutableLiveData<T> {
    public static final int START_VERSION = -1;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public class ExternalLifecycleBoundObserver extends LiveData<T>.LifecycleBoundObserver {
        public ExternalLifecycleBoundObserver(@NonNull LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
            super(lifecycleOwner, observer);
        }

        @Override // androidx.lifecycle.LiveData.LifecycleBoundObserver, androidx.lifecycle.LiveData.ObserverWrapper
        public boolean shouldBeActive() {
            return this.mOwner.getLifecycle().getCurrentState().isAtLeast(ExternalLiveData.this.observerActiveLevel());
        }
    }

    private Object callMethodPutIfAbsent(Object obj, Object obj2) throws Exception {
        Object fieldObservers = getFieldObservers();
        Method declaredMethod = fieldObservers.getClass().getDeclaredMethod("putIfAbsent", Object.class, Object.class);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(fieldObservers, obj, obj2);
    }

    private Object getFieldObservers() throws Exception {
        Field declaredField = LiveData.class.getDeclaredField("mObservers");
        declaredField.setAccessible(true);
        return declaredField.get(this);
    }

    @Override // androidx.lifecycle.LiveData
    public int getVersion() {
        return super.getVersion();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
        return;
     */
    @Override // androidx.lifecycle.LiveData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void observe(@androidx.annotation.NonNull androidx.lifecycle.LifecycleOwner r3, @androidx.annotation.NonNull androidx.lifecycle.Observer<? super T> r4) {
        /*
            r2 = this;
            androidx.lifecycle.Lifecycle r0 = r3.getLifecycle()
            androidx.lifecycle.Lifecycle$State r0 = r0.getCurrentState()
            androidx.lifecycle.Lifecycle$State r1 = androidx.lifecycle.Lifecycle.State.DESTROYED
            if (r0 != r1) goto Ld
            goto L39
        Ld:
            androidx.lifecycle.ExternalLiveData$ExternalLifecycleBoundObserver r0 = new androidx.lifecycle.ExternalLiveData$ExternalLifecycleBoundObserver     // Catch: java.lang.Exception -> L29
            r0.<init>(r3, r4)     // Catch: java.lang.Exception -> L29
            java.lang.Object r4 = r2.callMethodPutIfAbsent(r4, r0)     // Catch: java.lang.Exception -> L29
            androidx.lifecycle.LiveData$LifecycleBoundObserver r4 = (androidx.lifecycle.LiveData.LifecycleBoundObserver) r4     // Catch: java.lang.Exception -> L29
            if (r4 == 0) goto L2b
            boolean r1 = r4.isAttachedTo(r3)     // Catch: java.lang.Exception -> L29
            if (r1 == 0) goto L21
            goto L2b
        L21:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch: java.lang.Exception -> L29
            java.lang.String r4 = "Cannot add the same observer with different lifecycles"
            r3.<init>(r4)     // Catch: java.lang.Exception -> L29
            throw r3     // Catch: java.lang.Exception -> L29
        L29:
            r3 = move-exception
            goto L36
        L2b:
            if (r4 == 0) goto L2e
            goto L39
        L2e:
            androidx.lifecycle.Lifecycle r3 = r3.getLifecycle()     // Catch: java.lang.Exception -> L29
            r3.addObserver(r0)     // Catch: java.lang.Exception -> L29
            return
        L36:
            r3.printStackTrace()
        L39:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.ExternalLiveData.observe(androidx.lifecycle.LifecycleOwner, androidx.lifecycle.Observer):void");
    }

    public Lifecycle.State observerActiveLevel() {
        return Lifecycle.State.CREATED;
    }
}
