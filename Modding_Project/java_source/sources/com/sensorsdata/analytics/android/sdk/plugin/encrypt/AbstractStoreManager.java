package com.sensorsdata.analytics.android.sdk.plugin.encrypt;

import android.content.Context;
import android.text.TextUtils;
import android.util.LruCache;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.util.SASpUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class AbstractStoreManager {
    private static final String TAG = "SA.AbstractStoreManager";
    private String mMaxPluginType;
    private StorePlugin mMaxPriorityPlugin;
    protected boolean mDefaultState = true;
    private final List<StorePlugin> mStorePluginList = new ArrayList();
    private final LruCacheData mLruCacheSPData = new LruCacheData(10);
    private final Lock mLock = new ReentrantLock(true);
    private final Set<String> mStoreTypes = new HashSet();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class LruCacheData {
        private LruCache<String, Object> mCacheSPData;

        public LruCacheData(int i) {
            this.mCacheSPData = new LruCache<>(i);
        }

        public Object get(String str) {
            LruCache<String, Object> lruCache = this.mCacheSPData;
            return lruCache.get(AbstractStoreManager.this.mMaxPluginType + str);
        }

        public void put(String str, Object obj) {
            LruCache<String, Object> lruCache = this.mCacheSPData;
            lruCache.put(AbstractStoreManager.this.mMaxPluginType + str, obj);
        }

        public void remove(String str) {
            LruCache<String, Object> lruCache = this.mCacheSPData;
            lruCache.remove(AbstractStoreManager.this.mMaxPluginType + str);
        }
    }

    private <T> T getValue(String str, String str2, T t) {
        T t2;
        StorePlugin storePlugin = this.mMaxPriorityPlugin;
        Iterator<StorePlugin> it = this.mStorePluginList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            StorePlugin next = it.next();
            if (next instanceof DefaultStorePlugin) {
                DefaultStorePlugin defaultStorePlugin = (DefaultStorePlugin) next;
                if (defaultStorePlugin.storeKeys() != null && defaultStorePlugin.storeKeys().contains(str)) {
                    storePlugin = next;
                    break;
                }
            }
        }
        str2.getClass();
        char c = 65535;
        switch (str2.hashCode()) {
            case -1808118735:
                if (str2.equals("String")) {
                    c = 0;
                    break;
                }
                break;
            case -672261858:
                if (str2.equals("Integer")) {
                    c = 1;
                    break;
                }
                break;
            case 2076426:
                if (str2.equals("Bool")) {
                    c = 2;
                    break;
                }
                break;
            case 2374300:
                if (str2.equals("Long")) {
                    c = 3;
                    break;
                }
                break;
            case 67973692:
                if (str2.equals("Float")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                t2 = (T) storePlugin.getString(storePlugin.type() + str);
                break;
            case 1:
                t2 = (T) storePlugin.getInteger(storePlugin.type() + str);
                break;
            case 2:
                t2 = (T) storePlugin.getBool(storePlugin.type() + str);
                break;
            case 3:
                t2 = (T) storePlugin.getLong(storePlugin.type() + str);
                break;
            case 4:
                t2 = (T) storePlugin.getFloat(storePlugin.type() + str);
                break;
            default:
                t2 = null;
                break;
        }
        return t2 == null ? t : t2;
    }

    private void removeUselessValue(String str) {
        for (StorePlugin storePlugin : this.mStorePluginList) {
            if (storePlugin != this.mMaxPriorityPlugin) {
                storePlugin.remove(storePlugin.type() + str);
            }
        }
    }

    private void storeKeys(String str, Object obj, String str2) {
        StorePlugin storePlugin = this.mMaxPriorityPlugin;
        Iterator<StorePlugin> it = this.mStorePluginList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            StorePlugin next = it.next();
            if (next instanceof DefaultStorePlugin) {
                DefaultStorePlugin defaultStorePlugin = (DefaultStorePlugin) next;
                if (defaultStorePlugin.storeKeys() != null && defaultStorePlugin.storeKeys().contains(str)) {
                    storePlugin = next;
                    break;
                }
            }
        }
        str2.getClass();
        char c = 65535;
        switch (str2.hashCode()) {
            case -1808118735:
                if (str2.equals("String")) {
                    c = 0;
                    break;
                }
                break;
            case -672261858:
                if (str2.equals("Integer")) {
                    c = 1;
                    break;
                }
                break;
            case 2076426:
                if (str2.equals("Bool")) {
                    c = 2;
                    break;
                }
                break;
            case 2374300:
                if (str2.equals("Long")) {
                    c = 3;
                    break;
                }
                break;
            case 67973692:
                if (str2.equals("Float")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                storePlugin.setString(storePlugin.type() + str, (String) obj);
                return;
            case 1:
                storePlugin.setInteger(storePlugin.type() + str, ((Integer) obj).intValue());
                return;
            case 2:
                storePlugin.setBool(storePlugin.type() + str, ((Boolean) obj).booleanValue());
                return;
            case 3:
                storePlugin.setLong(storePlugin.type() + str, ((Long) obj).longValue());
                return;
            case 4:
                storePlugin.setFloat(storePlugin.type() + str, ((Float) obj).floatValue());
                return;
            default:
                return;
        }
    }

    public boolean getBool(String str, boolean z) {
        boolean booleanValue;
        this.mLock.lock();
        try {
            Boolean bool = (Boolean) this.mLruCacheSPData.get(str);
            if (bool != null) {
                booleanValue = bool.booleanValue();
            } else if (this.mDefaultState) {
                booleanValue = ((Boolean) getValue(str, "Bool", Boolean.valueOf(z))).booleanValue();
            } else {
                Iterator<StorePlugin> it = this.mStorePluginList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    StorePlugin next = it.next();
                    Boolean bool2 = next.getBool(next.type() + str);
                    if (bool2 != null) {
                        if (next != this.mMaxPriorityPlugin) {
                            next.remove(next.type() + str);
                            StorePlugin storePlugin = this.mMaxPriorityPlugin;
                            storePlugin.setBool(this.mMaxPluginType + str, bool2.booleanValue());
                        }
                        this.mLruCacheSPData.put(str, bool2);
                        bool = bool2;
                    } else {
                        bool = bool2;
                    }
                }
                if (bool != null) {
                    z = bool.booleanValue();
                }
                return z;
            }
            return booleanValue;
        } catch (Exception e) {
            SALog.i(TAG, "get data failed,key = " + str, e);
            return z;
        } finally {
            this.mLock.unlock();
        }
    }

    public float getFloat(String str, float f) {
        float floatValue;
        this.mLock.lock();
        try {
            Float f2 = (Float) this.mLruCacheSPData.get(str);
            if (f2 != null) {
                floatValue = f2.floatValue();
            } else if (this.mDefaultState) {
                floatValue = ((Float) getValue(str, "Float", Float.valueOf(f))).floatValue();
            } else {
                Iterator<StorePlugin> it = this.mStorePluginList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    StorePlugin next = it.next();
                    Float f3 = next.getFloat(next.type() + str);
                    if (f3 != null) {
                        if (next != this.mMaxPriorityPlugin) {
                            next.remove(next.type() + str);
                            StorePlugin storePlugin = this.mMaxPriorityPlugin;
                            storePlugin.setFloat(this.mMaxPluginType + str, f3.floatValue());
                        }
                        this.mLruCacheSPData.put(str, f3);
                        f2 = f3;
                    } else {
                        f2 = f3;
                    }
                }
                if (f2 != null) {
                    f = f2.floatValue();
                }
                return f;
            }
            return floatValue;
        } catch (Exception e) {
            SALog.i(TAG, "get data failed,key = " + str, e);
            return f;
        } finally {
            this.mLock.unlock();
        }
    }

    public int getInteger(String str, int i) {
        int intValue;
        this.mLock.lock();
        try {
            Integer num = (Integer) this.mLruCacheSPData.get(str);
            if (num != null) {
                intValue = num.intValue();
            } else if (this.mDefaultState) {
                intValue = ((Integer) getValue(str, "Integer", Integer.valueOf(i))).intValue();
            } else {
                Iterator<StorePlugin> it = this.mStorePluginList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    StorePlugin next = it.next();
                    Integer integer = next.getInteger(next.type() + str);
                    if (integer != null) {
                        if (next != this.mMaxPriorityPlugin) {
                            next.remove(next.type() + str);
                            StorePlugin storePlugin = this.mMaxPriorityPlugin;
                            storePlugin.setInteger(this.mMaxPluginType + str, integer.intValue());
                        }
                        this.mLruCacheSPData.put(str, integer);
                        num = integer;
                    } else {
                        num = integer;
                    }
                }
                if (num != null) {
                    i = num.intValue();
                }
                return i;
            }
            return intValue;
        } catch (Exception e) {
            SALog.i(TAG, "get data failed,key = " + str, e);
            return i;
        } finally {
            this.mLock.unlock();
        }
    }

    public Long getLong(String str, long j) {
        long longValue;
        this.mLock.lock();
        try {
            try {
                Long l = (Long) this.mLruCacheSPData.get(str);
                if (l == null) {
                    if (this.mDefaultState) {
                        l = (Long) getValue(str, "Long", Long.valueOf(j));
                    } else {
                        Iterator<StorePlugin> it = this.mStorePluginList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            StorePlugin next = it.next();
                            Long l2 = next.getLong(next.type() + str);
                            if (l2 != null) {
                                if (next != this.mMaxPriorityPlugin) {
                                    next.remove(next.type() + str);
                                    StorePlugin storePlugin = this.mMaxPriorityPlugin;
                                    storePlugin.setLong(this.mMaxPluginType + str, l2.longValue());
                                }
                                this.mLruCacheSPData.put(str, l2);
                                l = l2;
                            } else {
                                l = l2;
                            }
                        }
                        if (l == null) {
                            longValue = j;
                        } else {
                            longValue = l.longValue();
                        }
                        Long valueOf = Long.valueOf(longValue);
                        this.mLock.unlock();
                        return valueOf;
                    }
                }
                this.mLock.unlock();
                return l;
            } catch (Exception e) {
                SALog.i(TAG, "get data failed,key = " + str, e);
                this.mLock.unlock();
                return Long.valueOf(j);
            }
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    public String getString(String str, String str2) {
        this.mLock.lock();
        try {
            try {
                String str3 = (String) this.mLruCacheSPData.get(str);
                if (str3 == null) {
                    if (this.mDefaultState) {
                        str3 = (String) getValue(str, "String", str2);
                    } else {
                        Iterator<StorePlugin> it = this.mStorePluginList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            StorePlugin next = it.next();
                            String string = next.getString(next.type() + str);
                            if (!TextUtils.isEmpty(string)) {
                                if (next != this.mMaxPriorityPlugin) {
                                    next.remove(next.type() + str);
                                    StorePlugin storePlugin = this.mMaxPriorityPlugin;
                                    storePlugin.setString(this.mMaxPluginType + str, string);
                                }
                                this.mLruCacheSPData.put(str, string);
                                str3 = string;
                            } else {
                                str3 = string;
                            }
                        }
                        if (str3 != null) {
                            str2 = str3;
                        }
                        this.mLock.unlock();
                        return str2;
                    }
                }
                this.mLock.unlock();
                return str3;
            } catch (Exception e) {
                SALog.i(TAG, "get data failed,key = " + str, e);
                this.mLock.unlock();
                return str2;
            }
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    public boolean isExists(String str) {
        this.mLock.lock();
        try {
            try {
            } catch (Exception e) {
                SALog.i(TAG, "isExists failed,key = " + str, e);
            }
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            for (StorePlugin storePlugin : this.mStorePluginList) {
                if (storePlugin.isExists(storePlugin.type() + str)) {
                    this.mLock.unlock();
                    return true;
                }
            }
            return false;
        } finally {
            this.mLock.unlock();
        }
    }

    public boolean isRegisterPlugin(Context context, String str) {
        File file;
        try {
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        if (!new File("data/data/" + context.getPackageName() + "/shared_prefs", str + ".xml").exists()) {
            return false;
        }
        if (SASpUtils.getSharedPreferences(context, str, 0).getAll().size() == 0) {
            SALog.i(TAG, "delete sp: " + str);
            return !file.delete();
        }
        return true;
    }

    public void registerPlugin(StorePlugin storePlugin) {
        if (storePlugin == null) {
            return;
        }
        String type = storePlugin.type();
        if (TextUtils.isEmpty(type)) {
            SALog.i(TAG, "PluginType is null");
            return;
        }
        if (!this.mStoreTypes.contains(type)) {
            this.mStoreTypes.add(type);
        } else {
            Iterator<StorePlugin> it = this.mStorePluginList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                StorePlugin next = it.next();
                if (TextUtils.equals(type, next.type())) {
                    this.mStorePluginList.remove(next);
                    break;
                }
            }
        }
        this.mStorePluginList.add(0, storePlugin);
        this.mMaxPriorityPlugin = storePlugin;
        this.mMaxPluginType = storePlugin.type();
    }

    public void remove(String str) {
        this.mLock.lock();
        try {
            try {
                if (this.mDefaultState) {
                    StorePlugin storePlugin = this.mMaxPriorityPlugin;
                    Iterator<StorePlugin> it = this.mStorePluginList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        StorePlugin next = it.next();
                        if ((next instanceof DefaultStorePlugin) && ((DefaultStorePlugin) next).storeKeys() != null && ((DefaultStorePlugin) next).storeKeys().contains(str)) {
                            storePlugin = next;
                            break;
                        }
                    }
                    storePlugin.remove(storePlugin.type() + str);
                } else {
                    for (StorePlugin storePlugin2 : this.mStorePluginList) {
                        storePlugin2.remove(storePlugin2.type() + str);
                    }
                }
                this.mLruCacheSPData.remove(str);
                this.mLock.unlock();
            } catch (Exception e) {
                SALog.i(TAG, "remove failed,key = " + str, e);
                this.mLock.unlock();
            }
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    public void setBool(String str, boolean z) {
        this.mLock.lock();
        try {
            if (this.mDefaultState) {
                storeKeys(str, Boolean.valueOf(z), "Bool");
            } else {
                removeUselessValue(str);
                StorePlugin storePlugin = this.mMaxPriorityPlugin;
                storePlugin.setBool(this.mMaxPluginType + str, z);
                this.mLruCacheSPData.put(str, Boolean.valueOf(z));
            }
        } catch (Exception e) {
            SALog.i(TAG, "save data failed,key = " + str + "value = " + z, e);
        } finally {
            this.mLock.unlock();
        }
    }

    public void setFloat(String str, float f) {
        this.mLock.lock();
        try {
            if (this.mDefaultState) {
                storeKeys(str, Float.valueOf(f), "Float");
            } else {
                removeUselessValue(str);
                StorePlugin storePlugin = this.mMaxPriorityPlugin;
                storePlugin.setFloat(this.mMaxPluginType + str, f);
                this.mLruCacheSPData.put(str, Float.valueOf(f));
            }
        } catch (Exception e) {
            SALog.i(TAG, "save data failed,key = " + str + "value = " + f, e);
        } finally {
            this.mLock.unlock();
        }
    }

    public void setInteger(String str, int i) {
        this.mLock.lock();
        try {
            if (this.mDefaultState) {
                storeKeys(str, Integer.valueOf(i), "Integer");
            } else {
                removeUselessValue(str);
                StorePlugin storePlugin = this.mMaxPriorityPlugin;
                storePlugin.setInteger(this.mMaxPluginType + str, i);
                this.mLruCacheSPData.put(str, Integer.valueOf(i));
            }
        } catch (Exception e) {
            SALog.i(TAG, "save data failed,key = " + str + "value = " + i, e);
        } finally {
            this.mLock.unlock();
        }
    }

    public void setLong(String str, long j) {
        this.mLock.lock();
        try {
            if (this.mDefaultState) {
                storeKeys(str, Long.valueOf(j), "Long");
            } else {
                removeUselessValue(str);
                StorePlugin storePlugin = this.mMaxPriorityPlugin;
                storePlugin.setLong(this.mMaxPluginType + str, j);
                this.mLruCacheSPData.put(str, Long.valueOf(j));
            }
        } catch (Exception e) {
            SALog.i(TAG, "save data failed,key = " + str + "value = " + j, e);
        } finally {
            this.mLock.unlock();
        }
    }

    public void setString(String str, String str2) {
        this.mLock.lock();
        try {
            if (this.mDefaultState) {
                storeKeys(str, str2, "String");
            } else if (str2 == null) {
                for (StorePlugin storePlugin : this.mStorePluginList) {
                    storePlugin.remove(storePlugin.type() + str);
                }
                this.mLruCacheSPData.remove(str);
            } else {
                removeUselessValue(str);
                StorePlugin storePlugin2 = this.mMaxPriorityPlugin;
                storePlugin2.setString(this.mMaxPluginType + str, str2);
                this.mLruCacheSPData.put(str, str2);
            }
        } catch (Exception e) {
            SALog.i(TAG, "save data failed,key = " + str + "value = " + str2, e);
        } finally {
            this.mLock.unlock();
        }
    }

    public void upgrade() {
        StorePlugin storePlugin;
        this.mLock.lock();
        try {
            try {
                for (int size = this.mStorePluginList.size() - 1; size >= 0; size--) {
                    StorePlugin storePlugin2 = this.mStorePluginList.get(size);
                    int i = size - 1;
                    if (i >= 0) {
                        storePlugin = this.mStorePluginList.get(i);
                    } else {
                        storePlugin = null;
                    }
                    if (storePlugin != null) {
                        storePlugin.upgrade(storePlugin2);
                    }
                }
                this.mLock.unlock();
            } catch (Exception e) {
                SALog.i(TAG, "upgrade failed", e);
                this.mLock.unlock();
            }
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }
}
