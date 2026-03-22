package com.tencent.thumbplayer.tcmedia.core.drm.reuse;

import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes6.dex */
public class TPDoubleQueueCachedPool<T> {
    private static final int DEFAULT_CORE_POOL_SIZE = 2;
    private static final String TAG = "[PlayerCore][TPDoubleQueueCachedPool]";
    private final int mCorePoolSize;
    private ITPObjectLifecycleMgr<T> mObjectLifecycleMgr;
    private final List<T> mIdleCacheList = new ArrayList();
    private final List<T> mBusyCacheList = new ArrayList();

    /* loaded from: classes6.dex */
    public interface ITPObjectLifecycleMgr<T> {
        T create(TPDoubleQueueCachedPool<T> tPDoubleQueueCachedPool);

        void release(TPDoubleQueueCachedPool<T> tPDoubleQueueCachedPool, T t);

        boolean reset(TPDoubleQueueCachedPool<T> tPDoubleQueueCachedPool, T t);
    }

    public TPDoubleQueueCachedPool(int i, int i2, ITPObjectLifecycleMgr<T> iTPObjectLifecycleMgr) {
        this.mCorePoolSize = i2 <= 0 ? 2 : i2;
        i = i <= 0 ? 2 : i;
        this.mObjectLifecycleMgr = iTPObjectLifecycleMgr;
        for (int i3 = 0; i3 < i; i3++) {
            T create = iTPObjectLifecycleMgr.create(this);
            if (create == null) {
                TPNativeLog.printLog(3, TAG, "TPDoubleQueueCachedPool, createObject failed.");
            } else {
                this.mIdleCacheList.add(create);
            }
        }
        TPNativeLog.printLog(2, TAG, "TPDoubleQueueCachedPool init size:" + this.mIdleCacheList.size());
    }

    public synchronized T allocObject() {
        T remove;
        if (this.mIdleCacheList.isEmpty()) {
            remove = this.mObjectLifecycleMgr.create(this);
            if (remove == null) {
                return null;
            }
        } else {
            remove = this.mIdleCacheList.remove(0);
        }
        this.mBusyCacheList.add(remove);
        return remove;
    }

    public synchronized void freeObject(T t) {
        this.mBusyCacheList.remove(t);
        this.mObjectLifecycleMgr.release(this, t);
    }

    public synchronized void recycleObject(T t) {
        if (this.mBusyCacheList.remove(t) && this.mIdleCacheList.size() < this.mCorePoolSize && this.mObjectLifecycleMgr.reset(this, t)) {
            this.mIdleCacheList.add(t);
        } else {
            this.mObjectLifecycleMgr.release(this, t);
        }
    }

    public synchronized void release() {
        try {
            ListIterator<T> listIterator = this.mBusyCacheList.listIterator();
            while (listIterator.hasNext()) {
                this.mObjectLifecycleMgr.release(this, listIterator.next());
                listIterator.remove();
            }
            ListIterator<T> listIterator2 = this.mIdleCacheList.listIterator();
            while (listIterator2.hasNext()) {
                this.mObjectLifecycleMgr.release(this, listIterator2.next());
                listIterator2.remove();
            }
            this.mObjectLifecycleMgr = null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
