package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import com.google.android.gms.measurement.internal.Wwwwwwwwwwwwwwwwwwwwwwwww;
import com.google.firebase.datastorage.JavaDataStorage;
import com.google.firebase.datastorage.JavaDataStorageKt;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import j$.time.ZoneOffset;
import j$.time.format.DateTimeFormatter;
import j$.util.DateRetargetClass;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class HeartBeatInfoStorage {
    private static final String HEARTBEAT_PREFERENCES_NAME = "FirebaseHeartBeat";
    private static final int HEART_BEAT_COUNT_LIMIT = 30;
    private static final String PREFERENCES_NAME = "FirebaseAppHeartBeat";
    private static HeartBeatInfoStorage instance;
    private final JavaDataStorage firebaseDataStore;
    private static final Preferences.Key<Long> GLOBAL = PreferencesKeys.longKey("fire-global");
    private static final Preferences.Key<Long> HEART_BEAT_COUNT_TAG = PreferencesKeys.longKey("fire-count");
    private static final Preferences.Key<String> LAST_STORED_DATE = PreferencesKeys.stringKey("last-used-date");

    public HeartBeatInfoStorage(Context context, String str) {
        this.firebaseDataStore = new JavaDataStorage(context, HEARTBEAT_PREFERENCES_NAME + str);
    }

    public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HeartBeatInfoStorage heartBeatInfoStorage, String str, MutablePreferences mutablePreferences) {
        heartBeatInfoStorage.getClass();
        mutablePreferences.set(LAST_STORED_DATE, str);
        heartBeatInfoStorage.removeStoredDate(mutablePreferences, str);
        return null;
    }

    public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HeartBeatInfoStorage heartBeatInfoStorage, MutablePreferences mutablePreferences) {
        Set Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        heartBeatInfoStorage.getClass();
        long j = 0;
        for (Map.Entry<Preferences.Key<?>, Object> entry : mutablePreferences.asMap().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Preferences.Key<?> key = entry.getKey();
                String formattedDate = heartBeatInfoStorage.getFormattedDate(System.currentTimeMillis());
                if (((Set) entry.getValue()).contains(formattedDate)) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Object[]{formattedDate});
                    mutablePreferences.set(key, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    j++;
                } else {
                    mutablePreferences.remove(key);
                }
            }
        }
        if (j == 0) {
            mutablePreferences.remove(HEART_BEAT_COUNT_TAG);
            return null;
        }
        mutablePreferences.set(HEART_BEAT_COUNT_TAG, Long.valueOf(j));
        return null;
    }

    public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HeartBeatInfoStorage heartBeatInfoStorage, String str, String str2, Preferences.Key key, MutablePreferences mutablePreferences) {
        heartBeatInfoStorage.getClass();
        Preferences.Key<String> key2 = LAST_STORED_DATE;
        if (((String) JavaDataStorageKt.getOrDefault(mutablePreferences, key2, "")).equals(str)) {
            Preferences.Key<Set<String>> storedUserAgentString = heartBeatInfoStorage.getStoredUserAgentString(mutablePreferences, str);
            if (storedUserAgentString == null || storedUserAgentString.getName().equals(str2)) {
                return null;
            }
            heartBeatInfoStorage.updateStoredUserAgent(mutablePreferences, key, str);
            return null;
        }
        Preferences.Key<Long> key3 = HEART_BEAT_COUNT_TAG;
        long longValue = ((Long) JavaDataStorageKt.getOrDefault(mutablePreferences, key3, 0L)).longValue();
        if (longValue + 1 == 30) {
            longValue = heartBeatInfoStorage.cleanUpStoredHeartBeats(mutablePreferences);
        }
        HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.getOrDefault(mutablePreferences, key, new HashSet()));
        hashSet.add(str);
        mutablePreferences.set(key, hashSet);
        mutablePreferences.set(key3, Long.valueOf(longValue + 1));
        mutablePreferences.set(key2, str);
        return null;
    }

    public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, MutablePreferences mutablePreferences) {
        mutablePreferences.set(GLOBAL, Long.valueOf(j));
        return null;
    }

    private synchronized long cleanUpStoredHeartBeats(MutablePreferences mutablePreferences) {
        long j;
        try {
            long longValue = ((Long) JavaDataStorageKt.getOrDefault(mutablePreferences, HEART_BEAT_COUNT_TAG, 0L)).longValue();
            String str = "";
            Set hashSet = new HashSet();
            String str2 = null;
            for (Map.Entry<Preferences.Key<?>, Object> entry : mutablePreferences.asMap().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set<String> set = (Set) entry.getValue();
                    for (String str3 : set) {
                        if (str2 != null && str2.compareTo(str3) <= 0) {
                        }
                        str = entry.getKey().getName();
                        hashSet = set;
                        str2 = str3;
                    }
                }
            }
            HashSet hashSet2 = new HashSet(hashSet);
            hashSet2.remove(str2);
            mutablePreferences.set(PreferencesKeys.stringSetKey(str), hashSet2);
            j = longValue - 1;
            mutablePreferences.set(HEART_BEAT_COUNT_TAG, Long.valueOf(j));
        } catch (Throwable th) {
            throw th;
        }
        return j;
    }

    private synchronized String getFormattedDate(long j) {
        if (Build.VERSION.SDK_INT >= 26) {
            return DateRetargetClass.toInstant(new Date(j)).atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
        }
        return new SimpleDateFormat(TimeUtils.YYYY_MM_DD, Locale.UK).format(new Date(j));
    }

    private synchronized Preferences.Key<Set<String>> getStoredUserAgentString(MutablePreferences mutablePreferences, String str) {
        for (Map.Entry<Preferences.Key<?>, Object> entry : mutablePreferences.asMap().entrySet()) {
            if (entry.getValue() instanceof Set) {
                for (String str2 : (Set) entry.getValue()) {
                    if (str.equals(str2)) {
                        return PreferencesKeys.stringSetKey(entry.getKey().getName());
                    }
                }
                continue;
            }
        }
        return null;
    }

    private synchronized void removeStoredDate(MutablePreferences mutablePreferences, String str) {
        try {
            Preferences.Key<Set<String>> storedUserAgentString = getStoredUserAgentString(mutablePreferences, str);
            if (storedUserAgentString == null) {
                return;
            }
            HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.getOrDefault(mutablePreferences, storedUserAgentString, new HashSet()));
            hashSet.remove(str);
            if (hashSet.isEmpty()) {
                mutablePreferences.remove(storedUserAgentString);
            } else {
                mutablePreferences.set(storedUserAgentString, hashSet);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void updateStoredUserAgent(MutablePreferences mutablePreferences, Preferences.Key<Set<String>> key, String str) {
        removeStoredDate(mutablePreferences, str);
        HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.getOrDefault(mutablePreferences, key, new HashSet()));
        hashSet.add(str);
        mutablePreferences.set(key, hashSet);
    }

    public synchronized void deleteAllHeartBeats() {
        this.firebaseDataStore.editSync(new Function1() { // from class: com.google.firebase.heartbeatinfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeartBeatInfoStorage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HeartBeatInfoStorage.this, (MutablePreferences) obj);
            }
        });
    }

    public synchronized List<HeartBeatResult> getAllHeartBeats() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            String formattedDate = getFormattedDate(System.currentTimeMillis());
            for (Map.Entry<Preferences.Key<?>, Object> entry : this.firebaseDataStore.getAllSync().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(formattedDate);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(HeartBeatResult.create(entry.getKey().getName(), new ArrayList(hashSet)));
                    }
                }
            }
            updateGlobalHeartBeat(System.currentTimeMillis());
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public int getHeartBeatCount() {
        return ((Long) this.firebaseDataStore.getSync(HEART_BEAT_COUNT_TAG, 0L)).intValue();
    }

    public synchronized long getLastGlobalHeartBeat() {
        return ((Long) this.firebaseDataStore.getSync(GLOBAL, -1L)).longValue();
    }

    public synchronized boolean isSameDateUtc(long j, long j2) {
        return getFormattedDate(j).equals(getFormattedDate(j2));
    }

    public synchronized void postHeartBeatCleanUp() {
        final String formattedDate = getFormattedDate(System.currentTimeMillis());
        this.firebaseDataStore.editSync(new Function1() { // from class: com.google.firebase.heartbeatinfo.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeartBeatInfoStorage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HeartBeatInfoStorage.this, formattedDate, (MutablePreferences) obj);
            }
        });
    }

    public synchronized boolean shouldSendGlobalHeartBeat(long j) {
        return shouldSendSdkHeartBeat(GLOBAL, j);
    }

    public synchronized boolean shouldSendSdkHeartBeat(Preferences.Key<Long> key, long j) {
        if (isSameDateUtc(((Long) this.firebaseDataStore.getSync(key, -1L)).longValue(), j)) {
            return false;
        }
        this.firebaseDataStore.putSync(key, Long.valueOf(j));
        return true;
    }

    public synchronized void storeHeartBeat(long j, final String str) {
        final String formattedDate = getFormattedDate(j);
        final Preferences.Key<Set<String>> stringSetKey = PreferencesKeys.stringSetKey(str);
        this.firebaseDataStore.editSync(new Function1() { // from class: com.google.firebase.heartbeatinfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeartBeatInfoStorage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HeartBeatInfoStorage.this, formattedDate, str, stringSetKey, (MutablePreferences) obj);
            }
        });
    }

    public synchronized void updateGlobalHeartBeat(final long j) {
        this.firebaseDataStore.editSync(new Function1() { // from class: com.google.firebase.heartbeatinfo.Wwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeartBeatInfoStorage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, (MutablePreferences) obj);
            }
        });
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public HeartBeatInfoStorage(JavaDataStorage javaDataStorage) {
        this.firebaseDataStore = javaDataStorage;
    }
}
