package com.google.firebase.datastorage;

import android.content.Context;
import android.os.Process;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.SharedPreferencesMigrationKt;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesFactory;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J'\u0010\u0016\u001a\u0002H\u0017\"\u0004\b\u0000\u0010\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00170\u00192\u0006\u0010\u001a\u001a\u0002H\u0017¢\u0006\u0002\u0010\u001bJ\u001a\u0010\u001c\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00170\u0019J'\u0010\u001d\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00170\u00192\u0006\u0010\u001e\u001a\u0002H\u0017¢\u0006\u0002\u0010\u001fJ\u0016\u0010 \u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0019\u0012\u0004\u0012\u00020\u00010!J\u001a\u0010\"\u001a\u00020\u00112\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020&0$R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R%\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010*\u00020\u00038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/google/firebase/datastorage/JavaDataStorage;", "", "context", "Landroid/content/Context;", "name", "", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "getContext", "()Landroid/content/Context;", "getName", "()Ljava/lang/String;", "editLock", "Ljava/lang/ThreadLocal;", "", "dataStore", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "getDataStore", "(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", "dataStore$delegate", "Lkotlin/properties/ReadOnlyProperty;", "getSync", "T", "key", "Landroidx/datastore/preferences/core/Preferences$Key;", "defaultValue", "(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Ljava/lang/Object;", "contains", "putSync", "value", "(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Landroidx/datastore/preferences/core/Preferences;", "getAllSync", "", "editSync", "transform", "Lkotlin/Function1;", "Landroidx/datastore/preferences/core/MutablePreferences;", "", "com.google.firebase-firebase-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class JavaDataStorage {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property2(new PropertyReference2Impl(JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};
    @NotNull
    private final Context context;
    @NotNull
    private final DataStore<Preferences> dataStore;
    @NotNull
    private final ReadOnlyProperty dataStore$delegate;
    @NotNull
    private final ThreadLocal<Boolean> editLock = new ThreadLocal<>();
    @NotNull
    private final String name;

    public JavaDataStorage(@NotNull Context context, @NotNull String str) {
        this.context = context;
        this.name = str;
        this.dataStore$delegate = PreferenceDataStoreDelegateKt.preferencesDataStore$default(str, new ReplaceFileCorruptionHandler(new Function1() { // from class: com.google.firebase.datastorage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Preferences dataStore_delegate$lambda$0;
                dataStore_delegate$lambda$0 = JavaDataStorage.dataStore_delegate$lambda$0(JavaDataStorage.this, (CorruptionException) obj);
                return dataStore_delegate$lambda$0;
            }
        }), new Function1() { // from class: com.google.firebase.datastorage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List dataStore_delegate$lambda$1;
                dataStore_delegate$lambda$1 = JavaDataStorage.dataStore_delegate$lambda$1(JavaDataStorage.this, (Context) obj);
                return dataStore_delegate$lambda$1;
            }
        }, null, 8, null);
        this.dataStore = getDataStore(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preferences dataStore_delegate$lambda$0(JavaDataStorage javaDataStorage, CorruptionException corruptionException) {
        Reflection.getOrCreateKotlinClass(JavaDataStorage.class).getSimpleName();
        String str = javaDataStorage.name;
        Process.myPid();
        return PreferencesFactory.createEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List dataStore_delegate$lambda$1(JavaDataStorage javaDataStorage, Context context) {
        return CollectionsKt.listOf(SharedPreferencesMigrationKt.SharedPreferencesMigration$default(context, javaDataStorage.name, null, 4, null));
    }

    private final DataStore<Preferences> getDataStore(Context context) {
        return (DataStore) this.dataStore$delegate.getValue(context, $$delegatedProperties[0]);
    }

    public final <T> boolean contains(@NotNull Preferences.Key<T> key) {
        Object runBlocking$default;
        runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new JavaDataStorage$contains$1(this, key, null), 1, null);
        return ((Boolean) runBlocking$default).booleanValue();
    }

    @NotNull
    public final Preferences editSync(@NotNull Function1<? super MutablePreferences, Unit> function1) {
        Object runBlocking$default;
        runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new JavaDataStorage$editSync$1(this, function1, null), 1, null);
        return (Preferences) runBlocking$default;
    }

    @NotNull
    public final Map<Preferences.Key<?>, Object> getAllSync() {
        Object runBlocking$default;
        runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new JavaDataStorage$getAllSync$1(this, null), 1, null);
        return (Map) runBlocking$default;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final <T> T getSync(@NotNull Preferences.Key<T> key, T t) {
        Object runBlocking$default;
        runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new JavaDataStorage$getSync$1(this, key, t, null), 1, null);
        return (T) runBlocking$default;
    }

    @NotNull
    public final <T> Preferences putSync(@NotNull Preferences.Key<T> key, T t) {
        Object runBlocking$default;
        runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new JavaDataStorage$putSync$1(this, key, t, null), 1, null);
        return (Preferences) runBlocking$default;
    }
}
