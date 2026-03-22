package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.exifinterface.media.ExifInterface;
import androidx.room.concurrent.CloseBarrier;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.support.AutoCloser;
import androidx.room.support.AutoClosingRoomOpenHelperFactory;
import androidx.room.support.PrePackagedCopyOpenHelperFactory;
import androidx.room.support.QueryInterceptorOpenHelperFactory;
import androidx.room.util.KClassUtil;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import j$.util.Objects;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmSuppressWildcards;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000þ\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 \u009a\u00012\u00020\u0001:\u000e\u0094\u0001\u0095\u0001\u0096\u0001\u0097\u0001\u0098\u0001\u0099\u0001\u009a\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u00107\u001a\u0004\u0018\u0001H8\"\b\b\u0000\u00108*\u00020\u00012\f\u00109\u001a\b\u0012\u0004\u0012\u0002H80:H\u0017¢\u0006\u0002\u0010;J%\u00107\u001a\u0002H8\"\b\b\u0000\u00108*\u00020\u00012\f\u00109\u001a\b\u0012\u0004\u0012\u0002H801H\u0007¢\u0006\u0002\u0010<J!\u0010=\u001a\u00020>2\n\u0010?\u001a\u0006\u0012\u0002\b\u0003012\u0006\u0010@\u001a\u00020\u0001H\u0000¢\u0006\u0002\bAJ\u0010\u0010B\u001a\u00020>2\u0006\u0010C\u001a\u00020DH\u0017J\u0015\u0010E\u001a\u00020\u00182\u0006\u0010C\u001a\u00020DH\u0000¢\u0006\u0002\bFJ*\u0010G\u001a\b\u0012\u0004\u0012\u00020H0%2\u001a\u0010I\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020K0:\u0012\u0004\u0012\u00020K0JH\u0017J*\u0010L\u001a\b\u0012\u0004\u0012\u00020H0%2\u001a\u0010I\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020K01\u0012\u0004\u0012\u00020K0JH\u0017J&\u0010M\u001a\u0004\u0018\u0001H8\"\n\b\u0000\u00108\u0018\u0001*\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0082\b¢\u0006\u0002\u0010NJ\u0010\u0010O\u001a\u00020\u00142\u0006\u0010P\u001a\u00020DH\u0015J\b\u0010Q\u001a\u00020RH\u0015J\b\u0010S\u001a\u00020\u001aH$J\b\u0010T\u001a\u00020\bH\u0007J\b\u0010U\u001a\u00020\nH\u0007J\r\u0010V\u001a\u00020\nH\u0000¢\u0006\u0002\bWJ\"\u0010X\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030:\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030:0%0JH\u0015J\"\u0010Y\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u000301\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003010%0JH\u0015J\u0016\u0010]\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020K0:0^H\u0017J\u0016\u0010_\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020K010^H\u0017J\b\u0010`\u001a\u00020>H'J)\u0010a\u001a\u00020>2\u0006\u0010b\u001a\u00020#2\u0012\u0010c\u001a\n\u0012\u0006\b\u0001\u0012\u00020e0d\"\u00020eH\u0005¢\u0006\u0002\u0010fJ\b\u0010i\u001a\u00020>H\u0016J\b\u0010j\u001a\u00020>H\u0002J\b\u0010m\u001a\u00020>H\u0017J\b\u0010n\u001a\u00020>H\u0017JB\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2\u0006\u0010q\u001a\u00020#2\"\u0010r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020t\u0012\n\u0012\b\u0012\u0004\u0012\u0002Hp0u\u0012\u0006\u0012\u0004\u0018\u00010\u00010sH\u0080@¢\u0006\u0004\bv\u0010wJ\r\u0010x\u001a\u00020#H\u0000¢\u0006\u0002\byJ)\u0010z\u001a\u00020{2\u0006\u0010z\u001a\u00020e2\u0012\u0010|\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010dH\u0016¢\u0006\u0002\u0010}J\u001d\u0010z\u001a\u00020{2\u0006\u0010z\u001a\u00020~2\u000b\b\u0002\u0010\u007f\u001a\u0005\u0018\u00010\u0080\u0001H\u0017J\u0013\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020eH\u0016J\t\u0010\u0084\u0001\u001a\u00020>H\u0017J\t\u0010\u0085\u0001\u001a\u00020>H\u0002J\t\u0010\u0086\u0001\u001a\u00020>H\u0017J\t\u0010\u0087\u0001\u001a\u00020>H\u0002J\t\u0010\u0088\u0001\u001a\u00020>H\u0017J\u0013\u0010\u0089\u0001\u001a\u00020>2\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J(\u0010\u0089\u0001\u001a\u0003H\u008c\u0001\"\u0005\b\u0000\u0010\u008c\u00012\u000f\u0010\u008a\u0001\u001a\n\u0012\u0005\u0012\u0003H\u008c\u00010\u008d\u0001H\u0016¢\u0006\u0003\u0010\u008e\u0001J\u0012\u0010\u008f\u0001\u001a\u00020>2\u0007\u0010\u0090\u0001\u001a\u00020\u0005H\u0015J\u0013\u0010\u008f\u0001\u001a\u00020>2\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0005J\t\u0010\u0093\u0001\u001a\u00020#H\u0016R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0004@\u0004X\u0085\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0003R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000eR\u000e\u0010\u0012\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u001fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010$\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%8\u0004@\u0004X\u0085\u000e¢\u0006\b\n\u0000\u0012\u0004\b'\u0010\u0003R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u0019\u0010*\u001a\b\u0012\u0004\u0012\u00020,0+8G¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u001e\u0010/\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u000301\u0012\u0004\u0012\u00020\u000100X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00102\u001a\u00020#X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R.\u0010Z\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u000301\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003010%0J8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b[\u0010\\R\u0014\u0010g\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bg\u00104R\u0011\u0010h\u001a\u00020#8G¢\u0006\u0006\u001a\u0004\bh\u00104R\u0014\u0010k\u001a\u00020#8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bl\u00104¨\u0006\u009b\u0001"}, d2 = {"Landroidx/room/RoomDatabase;", "", "<init>", "()V", "mDatabase", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "getMDatabase$annotations", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "transactionContext", "Lkotlin/coroutines/CoroutineContext;", "queryExecutor", "Ljava/util/concurrent/Executor;", "getQueryExecutor", "()Ljava/util/concurrent/Executor;", "internalQueryExecutor", "transactionExecutor", "getTransactionExecutor", "internalTransactionExecutor", "openHelper", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "getOpenHelper", "()Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "connectionManager", "Landroidx/room/RoomConnectionManager;", "invalidationTracker", "Landroidx/room/InvalidationTracker;", "getInvalidationTracker", "()Landroidx/room/InvalidationTracker;", "internalTracker", "closeBarrier", "Landroidx/room/concurrent/CloseBarrier;", "getCloseBarrier$room_runtime_release", "()Landroidx/room/concurrent/CloseBarrier;", "allowMainThreadQueries", "", "mCallbacks", "", "Landroidx/room/RoomDatabase$Callback;", "getMCallbacks$annotations", "autoCloser", "Landroidx/room/support/AutoCloser;", "suspendingTransactionId", "Ljava/lang/ThreadLocal;", "", "getSuspendingTransactionId", "()Ljava/lang/ThreadLocal;", "typeConverters", "", "Lkotlin/reflect/KClass;", "useTempTrackingTable", "getUseTempTrackingTable$room_runtime_release", "()Z", "setUseTempTrackingTable$room_runtime_release", "(Z)V", "getTypeConverter", "T", "klass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Ljava/lang/Object;", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "addTypeConverter", "", "kclass", "converter", "addTypeConverter$room_runtime_release", "init", "configuration", "Landroidx/room/DatabaseConfiguration;", "createConnectionManager", "createConnectionManager$room_runtime_release", "getAutoMigrations", "Landroidx/room/migration/Migration;", "autoMigrationSpecs", "", "Landroidx/room/migration/AutoMigrationSpec;", "createAutoMigrations", "unwrapOpenHelper", "(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "createOpenHelper", "config", "createOpenDelegate", "Landroidx/room/RoomOpenDelegateMarker;", "createInvalidationTracker", "getCoroutineScope", "getQueryContext", "getTransactionContext", "getTransactionContext$room_runtime_release", "getRequiredTypeConverters", "getRequiredTypeConverterClasses", "requiredTypeConverterClassesMap", "getRequiredTypeConverterClassesMap$room_runtime_release", "()Ljava/util/Map;", "getRequiredAutoMigrationSpecs", "", "getRequiredAutoMigrationSpecClasses", "clearAllTables", "performClear", "hasForeignKeys", "tableNames", "", "", "(Z[Ljava/lang/String;)V", "isOpen", "isOpenInternal", "close", "onClosed", "isMainThread", "isMainThread$room_runtime_release", "assertNotMainThread", "assertNotSuspendingTransaction", "useConnection", "R", "isReadOnly", "block", "Lkotlin/Function2;", "Landroidx/room/Transactor;", "Lkotlin/coroutines/Continuation;", "useConnection$room_runtime_release", "(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "inCompatibilityMode", "inCompatibilityMode$room_runtime_release", "query", "Landroid/database/Cursor;", "args", "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "signal", "Landroid/os/CancellationSignal;", "compileStatement", "Landroidx/sqlite/db/SupportSQLiteStatement;", "sql", "beginTransaction", "internalBeginTransaction", "endTransaction", "internalEndTransaction", "setTransactionSuccessful", "runInTransaction", "body", "Ljava/lang/Runnable;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Ljava/util/concurrent/Callable;", "(Ljava/util/concurrent/Callable;)Ljava/lang/Object;", "internalInitInvalidationTracker", "db", "connection", "Landroidx/sqlite/SQLiteConnection;", "inTransaction", "JournalMode", "Builder", "MigrationContainer", "Callback", "PrepackagedDatabaseCallback", "QueryCallback", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2120:1\n352#1,15:2121\n352#1,15:2136\n477#2:2151\n423#2:2152\n1246#3,4:2153\n1187#3,2:2157\n1261#3,2:2159\n1557#3:2161\n1628#3,3:2162\n1264#3:2165\n1557#3:2166\n1628#3,3:2167\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase\n*L\n266#1:2121,15\n270#1:2136,15\n338#1:2151\n338#1:2152\n338#1:2153,4\n447#1:2157,2\n447#1:2159,2\n448#1:2161\n448#1:2162,3\n447#1:2165\n473#1:2166\n473#1:2167,3\n*E\n"})
/* loaded from: classes3.dex */
public abstract class RoomDatabase {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    private boolean allowMainThreadQueries;
    @Nullable
    private AutoCloser autoCloser;
    private RoomConnectionManager connectionManager;
    private CoroutineScope coroutineScope;
    private Executor internalQueryExecutor;
    private InvalidationTracker internalTracker;
    private Executor internalTransactionExecutor;
    @JvmField
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Nullable
    protected List<? extends Callback> mCallbacks;
    @JvmField
    @Nullable
    protected volatile SupportSQLiteDatabase mDatabase;
    private CoroutineContext transactionContext;
    @NotNull
    private final CloseBarrier closeBarrier = new CloseBarrier(new RoomDatabase$closeBarrier$1(this));
    @NotNull
    private final ThreadLocal<Integer> suspendingTransactionId = new ThreadLocal<>();
    @NotNull
    private final Map<KClass<?>, Object> typeConverters = new LinkedHashMap();
    private boolean useTempTrackingTable = true;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0015\n\u0002\b\f\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B9\b\u0011\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rB)\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\u000fJ\u0016\u0010?\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010@\u001a\u00020\u0007H\u0016J\u001e\u0010?\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010@\u001a\u00020\u00072\u0006\u0010A\u001a\u00020\u0014H\u0017J\u0016\u0010B\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010C\u001a\u000207H\u0016J\u001e\u0010B\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010C\u001a\u0002072\u0006\u0010A\u001a\u00020\u0014H\u0017J\u001c\u0010D\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010E\u001a\b\u0012\u0004\u0012\u00020:09H\u0017J$\u0010D\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010E\u001a\b\u0012\u0004\u0012\u00020:092\u0006\u0010A\u001a\u00020\u0014H\u0017J\u0018\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u001fH\u0016J'\u0010G\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010H\u001a\n\u0012\u0006\b\u0001\u0012\u00020J0I\"\u00020JH\u0016¢\u0006\u0002\u0010KJ\u0016\u0010L\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010M\u001a\u000201H\u0016J\u000e\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0016\u0010N\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\"\u001a\u00020#H\u0016J\u0016\u0010O\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010P\u001a\u00020\u0018H\u0016J\u0016\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010P\u001a\u00020\u0018H\u0016J\u000e\u0010R\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0016\u0010S\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010T\u001a\u00020%H\u0017J\u000e\u0010U\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0017J\u0014\u0010U\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010V\u001a\u00020!J\u000e\u0010W\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0017J\u0014\u0010W\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010V\u001a\u00020!J\u001a\u0010X\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\n\u0010Y\u001a\u00020Z\"\u00020.H\u0017J\"\u0010X\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010V\u001a\u00020!2\n\u0010Y\u001a\u00020Z\"\u00020.H\u0016J\u0016\u0010[\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010A\u001a\u00020\u0012H\u0016J\u001e\u0010\\\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010P\u001a\u00020\u0018H\u0016J\u001c\u0010\\\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\n\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010]\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010^\u001a\u00020\u0003H\u0016J \u0010_\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0001\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0017J\u0014\u0010`\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010;\u001a\u00020<J\u0014\u0010a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\n\u001a\u00020\u001aJ\u0016\u0010b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010c\u001a\u00020!H\u0007J\r\u0010d\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010eR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\b\u0012\u0004\u0012\u00020.0-X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00100\u001a\b\u0012\u0004\u0012\u0002010\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u00108\u001a\n\u0012\u0004\u0012\u00020:\u0018\u000109X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u0004\u0018\u00010<X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010=\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006f"}, d2 = {"Landroidx/room/RoomDatabase$Builder;", "T", "Landroidx/room/RoomDatabase;", "", "klass", "Lkotlin/reflect/KClass;", "name", "", "factory", "Lkotlin/Function0;", "context", "Landroid/content/Context;", "<init>", "(Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/content/Context;)V", "Ljava/lang/Class;", "(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V", "callbacks", "", "Landroidx/room/RoomDatabase$Callback;", "prepackagedDatabaseCallback", "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;", "queryCallback", "Landroidx/room/RoomDatabase$QueryCallback;", "queryCallbackExecutor", "Ljava/util/concurrent/Executor;", "queryCallbackCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "typeConverters", "queryExecutor", "transactionExecutor", "supportOpenHelperFactory", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;", "allowMainThreadQueries", "", "journalMode", "Landroidx/room/RoomDatabase$JournalMode;", "multiInstanceInvalidationIntent", "Landroid/content/Intent;", "autoCloseTimeout", "", "autoCloseTimeUnit", "Ljava/util/concurrent/TimeUnit;", "migrationContainer", "Landroidx/room/RoomDatabase$MigrationContainer;", "migrationsNotRequiredFrom", "", "", "migrationStartAndEndVersions", "autoMigrationSpecs", "Landroidx/room/migration/AutoMigrationSpec;", "requireMigration", "allowDestructiveMigrationOnDowngrade", "allowDestructiveMigrationForAllTables", "copyFromAssetPath", "copyFromFile", "Ljava/io/File;", "copyFromInputStream", "Ljava/util/concurrent/Callable;", "Ljava/io/InputStream;", "driver", "Landroidx/sqlite/SQLiteDriver;", "queryCoroutineContext", "inMemoryTrackingTableMode", "createFromAsset", "databaseFilePath", "callback", "createFromFile", "databaseFile", "createFromInputStream", "inputStreamCallable", "openHelperFactory", "addMigrations", "migrations", "", "Landroidx/room/migration/Migration;", "([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;", "addAutoMigrationSpec", "autoMigrationSpec", "setJournalMode", "setQueryExecutor", "executor", "setTransactionExecutor", "enableMultiInstanceInvalidation", "setMultiInstanceInvalidationServiceIntent", "invalidationServiceIntent", "fallbackToDestructiveMigration", "dropAllTables", "fallbackToDestructiveMigrationOnDowngrade", "fallbackToDestructiveMigrationFrom", "startVersions", "", "addCallback", "setQueryCallback", "addTypeConverter", "typeConverter", "setAutoCloseTimeout", "setDriver", "setQueryCoroutineContext", "setInMemoryTrackingMode", "inMemory", "build", "()Landroidx/room/RoomDatabase;", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2120:1\n1#2:2121\n*E\n"})
    /* loaded from: classes3.dex */
    public static class Builder<T extends RoomDatabase> {
        private boolean allowDestructiveMigrationForAllTables;
        private boolean allowDestructiveMigrationOnDowngrade;
        private boolean allowMainThreadQueries;
        @Nullable
        private TimeUnit autoCloseTimeUnit;
        private long autoCloseTimeout;
        @NotNull
        private final List<AutoMigrationSpec> autoMigrationSpecs;
        @NotNull
        private final List<Callback> callbacks;
        @NotNull
        private final Context context;
        @Nullable
        private String copyFromAssetPath;
        @Nullable
        private File copyFromFile;
        @Nullable
        private Callable<InputStream> copyFromInputStream;
        @Nullable
        private SQLiteDriver driver;
        @Nullable
        private final Function0<T> factory;
        private boolean inMemoryTrackingTableMode;
        @NotNull
        private JournalMode journalMode;
        @NotNull
        private final KClass<T> klass;
        @NotNull
        private final MigrationContainer migrationContainer;
        @NotNull
        private final Set<Integer> migrationStartAndEndVersions;
        @NotNull
        private Set<Integer> migrationsNotRequiredFrom;
        @Nullable
        private Intent multiInstanceInvalidationIntent;
        @Nullable
        private final String name;
        @Nullable
        private PrepackagedDatabaseCallback prepackagedDatabaseCallback;
        @Nullable
        private QueryCallback queryCallback;
        @Nullable
        private CoroutineContext queryCallbackCoroutineContext;
        @Nullable
        private Executor queryCallbackExecutor;
        @Nullable
        private CoroutineContext queryCoroutineContext;
        @Nullable
        private Executor queryExecutor;
        private boolean requireMigration;
        @Nullable
        private SupportSQLiteOpenHelper.Factory supportOpenHelperFactory;
        @Nullable
        private Executor transactionExecutor;
        @NotNull
        private final List<Object> typeConverters;

        /* JADX WARN: Multi-variable type inference failed */
        @PublishedApi
        public Builder(@NotNull KClass<T> kClass, @Nullable String str, @Nullable Function0<? extends T> function0, @NotNull Context context) {
            this.callbacks = new ArrayList();
            this.typeConverters = new ArrayList();
            this.journalMode = JournalMode.AUTOMATIC;
            this.autoCloseTimeout = -1L;
            this.migrationContainer = new MigrationContainer();
            this.migrationsNotRequiredFrom = new LinkedHashSet();
            this.migrationStartAndEndVersions = new LinkedHashSet();
            this.autoMigrationSpecs = new ArrayList();
            this.requireMigration = true;
            this.inMemoryTrackingTableMode = true;
            this.klass = kClass;
            this.context = context;
            this.name = str;
            this.factory = function0;
        }

        @NotNull
        public Builder<T> addAutoMigrationSpec(@NotNull AutoMigrationSpec autoMigrationSpec) {
            this.autoMigrationSpecs.add(autoMigrationSpec);
            return this;
        }

        @NotNull
        public Builder<T> addCallback(@NotNull Callback callback) {
            this.callbacks.add(callback);
            return this;
        }

        @NotNull
        public Builder<T> addMigrations(@NotNull Migration... migrationArr) {
            for (Migration migration : migrationArr) {
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.startVersion));
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.endVersion));
            }
            this.migrationContainer.addMigrations((Migration[]) Arrays.copyOf(migrationArr, migrationArr.length));
            return this;
        }

        @NotNull
        public Builder<T> addTypeConverter(@NotNull Object obj) {
            this.typeConverters.add(obj);
            return this;
        }

        @NotNull
        public Builder<T> allowMainThreadQueries() {
            this.allowMainThreadQueries = true;
            return this;
        }

        @NotNull
        public T build() {
            AutoClosingRoomOpenHelperFactory autoClosingRoomOpenHelperFactory;
            boolean z;
            boolean z2;
            boolean z3;
            SupportSQLiteOpenHelper.Factory factory;
            T t;
            CoroutineContext coroutineContext;
            int i;
            int i2;
            Executor executor = this.queryExecutor;
            if (executor == null && this.transactionExecutor == null) {
                Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
                this.transactionExecutor = iOThreadExecutor;
                this.queryExecutor = iOThreadExecutor;
            } else if (executor != null && this.transactionExecutor == null) {
                this.transactionExecutor = executor;
            } else if (executor == null) {
                this.queryExecutor = this.transactionExecutor;
            }
            RoomDatabaseKt.validateMigrationsNotRequired(this.migrationStartAndEndVersions, this.migrationsNotRequiredFrom);
            SQLiteDriver sQLiteDriver = this.driver;
            if (sQLiteDriver == null && this.supportOpenHelperFactory == null) {
                autoClosingRoomOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            } else if (sQLiteDriver == null) {
                autoClosingRoomOpenHelperFactory = this.supportOpenHelperFactory;
            } else if (this.supportOpenHelperFactory == null) {
                autoClosingRoomOpenHelperFactory = null;
            } else {
                throw new IllegalArgumentException("A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory.");
            }
            int i3 = 0;
            if (this.autoCloseTimeout > 0) {
                z = true;
            } else {
                z = false;
            }
            if (this.copyFromAssetPath == null && this.copyFromFile == null && this.copyFromInputStream == null) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (this.queryCallback != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (autoClosingRoomOpenHelperFactory != null) {
                if (z) {
                    if (this.name != null) {
                        long j = this.autoCloseTimeout;
                        TimeUnit timeUnit = this.autoCloseTimeUnit;
                        if (timeUnit != null) {
                            autoClosingRoomOpenHelperFactory = new AutoClosingRoomOpenHelperFactory(autoClosingRoomOpenHelperFactory, new AutoCloser(j, timeUnit, null, 4, null));
                        } else {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                    } else {
                        throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
                    }
                }
                if (z2) {
                    if (this.name != null) {
                        String str = this.copyFromAssetPath;
                        if (str == null) {
                            i = 0;
                        } else {
                            i = 1;
                        }
                        File file = this.copyFromFile;
                        if (file == null) {
                            i2 = 0;
                        } else {
                            i2 = 1;
                        }
                        Callable<InputStream> callable = this.copyFromInputStream;
                        if (callable != null) {
                            i3 = 1;
                        }
                        if (i + i2 + i3 == 1) {
                            autoClosingRoomOpenHelperFactory = new PrePackagedCopyOpenHelperFactory(str, file, callable, autoClosingRoomOpenHelperFactory);
                        } else {
                            throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                        }
                    } else {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                }
                if (z3) {
                    Executor executor2 = this.queryCallbackExecutor;
                    if ((executor2 != null && (coroutineContext = ExecutorsKt.from(executor2)) != null) || (coroutineContext = this.queryCallbackCoroutineContext) != null) {
                        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(coroutineContext);
                        QueryCallback queryCallback = this.queryCallback;
                        if (queryCallback != null) {
                            autoClosingRoomOpenHelperFactory = new QueryInterceptorOpenHelperFactory(autoClosingRoomOpenHelperFactory, CoroutineScope, queryCallback);
                        } else {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                    } else {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                }
                factory = autoClosingRoomOpenHelperFactory;
            } else {
                factory = null;
            }
            if (factory == null) {
                if (!z) {
                    if (!z2) {
                        if (z3) {
                            throw new IllegalArgumentException("Query Callback is not supported when an SQLiteDriver is configured.");
                        }
                    } else {
                        throw new IllegalArgumentException("Pre-Package Database is not supported when an SQLiteDriver is configured.");
                    }
                } else {
                    throw new IllegalArgumentException("Auto Closing Database is not supported when an SQLiteDriver is configured.");
                }
            }
            Context context = this.context;
            String str2 = this.name;
            MigrationContainer migrationContainer = this.migrationContainer;
            List<Callback> list = this.callbacks;
            boolean z4 = this.allowMainThreadQueries;
            JournalMode resolve$room_runtime_release = this.journalMode.resolve$room_runtime_release(context);
            Executor executor3 = this.queryExecutor;
            if (executor3 != null) {
                Executor executor4 = this.transactionExecutor;
                if (executor4 != null) {
                    DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, str2, factory, migrationContainer, list, z4, resolve$room_runtime_release, executor3, executor4, this.multiInstanceInvalidationIntent, this.requireMigration, this.allowDestructiveMigrationOnDowngrade, this.migrationsNotRequiredFrom, this.copyFromAssetPath, this.copyFromFile, this.copyFromInputStream, this.prepackagedDatabaseCallback, this.typeConverters, this.autoMigrationSpecs, this.allowDestructiveMigrationForAllTables, this.driver, this.queryCoroutineContext);
                    databaseConfiguration.setUseTempTrackingTable$room_runtime_release(this.inMemoryTrackingTableMode);
                    Function0<T> function0 = this.factory;
                    if (function0 == null || (t = function0.invoke()) == null) {
                        t = (T) KClassUtil.findAndInstantiateDatabaseImpl$default(JvmClassMappingKt.getJavaClass((KClass) this.klass), null, 2, null);
                    }
                    t.init(databaseConfiguration);
                    return t;
                }
                throw new IllegalArgumentException("Required value was null.");
            }
            throw new IllegalArgumentException("Required value was null.");
        }

        @NotNull
        public Builder<T> createFromAsset(@NotNull String str) {
            this.copyFromAssetPath = str;
            return this;
        }

        @NotNull
        public Builder<T> createFromFile(@NotNull File file) {
            this.copyFromFile = file;
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        @NotNull
        public Builder<T> createFromInputStream(@NotNull Callable<InputStream> callable) {
            this.copyFromInputStream = callable;
            return this;
        }

        @NotNull
        public Builder<T> enableMultiInstanceInvalidation() {
            Intent intent;
            if (this.name != null) {
                intent = new Intent(this.context, MultiInstanceInvalidationService.class);
            } else {
                intent = null;
            }
            this.multiInstanceInvalidationIntent = intent;
            return this;
        }

        @Deprecated(message = "Replace by overloaded version with parameter to indicate if all tables should be dropped or not.", replaceWith = @ReplaceWith(expression = "fallbackToDestructiveMigration(false)", imports = {}))
        @NotNull
        public Builder<T> fallbackToDestructiveMigration() {
            this.requireMigration = false;
            this.allowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        @Deprecated(message = "Replace by overloaded version with parameter to indicate if all tables should be dropped or not.", replaceWith = @ReplaceWith(expression = "fallbackToDestructiveMigrationFrom(false, startVersions)", imports = {}))
        @NotNull
        public Builder<T> fallbackToDestructiveMigrationFrom(@NotNull int... iArr) {
            for (int i : iArr) {
                this.migrationsNotRequiredFrom.add(Integer.valueOf(i));
            }
            return this;
        }

        @Deprecated(message = "Replace by overloaded version with parameter to indicate if all tables should be dropped or not.", replaceWith = @ReplaceWith(expression = "fallbackToDestructiveMigrationOnDowngrade(false)", imports = {}))
        @NotNull
        public Builder<T> fallbackToDestructiveMigrationOnDowngrade() {
            this.requireMigration = true;
            this.allowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        @NotNull
        public Builder<T> openHelperFactory(@Nullable SupportSQLiteOpenHelper.Factory factory) {
            this.supportOpenHelperFactory = factory;
            return this;
        }

        @ExperimentalRoomApi
        @NotNull
        public Builder<T> setAutoCloseTimeout(@IntRange(from = 0) long j, @NotNull TimeUnit timeUnit) {
            if (j >= 0) {
                this.autoCloseTimeout = j;
                this.autoCloseTimeUnit = timeUnit;
                return this;
            }
            throw new IllegalArgumentException("autoCloseTimeout must be >= 0");
        }

        @NotNull
        public final Builder<T> setDriver(@NotNull SQLiteDriver sQLiteDriver) {
            this.driver = sQLiteDriver;
            return this;
        }

        @ExperimentalRoomApi
        @NotNull
        public final Builder<T> setInMemoryTrackingMode(boolean z) {
            this.inMemoryTrackingTableMode = z;
            return this;
        }

        @NotNull
        public Builder<T> setJournalMode(@NotNull JournalMode journalMode) {
            this.journalMode = journalMode;
            return this;
        }

        @ExperimentalRoomApi
        @NotNull
        public Builder<T> setMultiInstanceInvalidationServiceIntent(@NotNull Intent intent) {
            if (this.name == null) {
                intent = null;
            }
            this.multiInstanceInvalidationIntent = intent;
            return this;
        }

        @NotNull
        public Builder<T> setQueryCallback(@NotNull QueryCallback queryCallback, @NotNull Executor executor) {
            this.queryCallback = queryCallback;
            this.queryCallbackExecutor = executor;
            this.queryCallbackCoroutineContext = null;
            return this;
        }

        @NotNull
        public final Builder<T> setQueryCoroutineContext(@NotNull CoroutineContext coroutineContext) {
            if (this.queryExecutor == null && this.transactionExecutor == null) {
                if (coroutineContext.get(ContinuationInterceptor.Key) != null) {
                    this.queryCoroutineContext = coroutineContext;
                    return this;
                }
                throw new IllegalArgumentException("It is required that the coroutine context contain a dispatcher.");
            }
            throw new IllegalArgumentException("This builder has already been configured with an Executor. A RoomDatabase canonly be configured with either an Executor or a CoroutineContext.");
        }

        @NotNull
        public Builder<T> setQueryExecutor(@NotNull Executor executor) {
            if (this.queryCoroutineContext == null) {
                this.queryExecutor = executor;
                return this;
            }
            throw new IllegalArgumentException("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
        }

        @NotNull
        public Builder<T> setTransactionExecutor(@NotNull Executor executor) {
            if (this.queryCoroutineContext == null) {
                this.transactionExecutor = executor;
                return this;
            }
            throw new IllegalArgumentException("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
        }

        @SuppressLint({"BuilderSetStyle"})
        @NotNull
        public Builder<T> createFromAsset(@NotNull String str, @NotNull PrepackagedDatabaseCallback prepackagedDatabaseCallback) {
            this.prepackagedDatabaseCallback = prepackagedDatabaseCallback;
            this.copyFromAssetPath = str;
            return this;
        }

        @SuppressLint({"BuilderSetStyle", "StreamFiles"})
        @NotNull
        public Builder<T> createFromFile(@NotNull File file, @NotNull PrepackagedDatabaseCallback prepackagedDatabaseCallback) {
            this.prepackagedDatabaseCallback = prepackagedDatabaseCallback;
            this.copyFromFile = file;
            return this;
        }

        @SuppressLint({"BuilderSetStyle", "LambdaLast"})
        @NotNull
        public Builder<T> createFromInputStream(@NotNull Callable<InputStream> callable, @NotNull PrepackagedDatabaseCallback prepackagedDatabaseCallback) {
            this.prepackagedDatabaseCallback = prepackagedDatabaseCallback;
            this.copyFromInputStream = callable;
            return this;
        }

        @NotNull
        public final Builder<T> fallbackToDestructiveMigration(boolean z) {
            this.requireMigration = false;
            this.allowDestructiveMigrationOnDowngrade = true;
            this.allowDestructiveMigrationForAllTables = z;
            return this;
        }

        @NotNull
        public Builder<T> fallbackToDestructiveMigrationFrom(boolean z, @NotNull int... iArr) {
            for (int i : iArr) {
                this.migrationsNotRequiredFrom.add(Integer.valueOf(i));
            }
            this.allowDestructiveMigrationForAllTables = z;
            return this;
        }

        @NotNull
        public final Builder<T> fallbackToDestructiveMigrationOnDowngrade(boolean z) {
            this.requireMigration = true;
            this.allowDestructiveMigrationOnDowngrade = true;
            this.allowDestructiveMigrationForAllTables = z;
            return this;
        }

        @NotNull
        public final Builder<T> setQueryCallback(@NotNull CoroutineContext coroutineContext, @NotNull QueryCallback queryCallback) {
            this.queryCallback = queryCallback;
            this.queryCallbackExecutor = null;
            this.queryCallbackCoroutineContext = coroutineContext;
            return this;
        }

        public Builder(@NotNull Context context, @NotNull Class<T> cls, @Nullable String str) {
            this.callbacks = new ArrayList();
            this.typeConverters = new ArrayList();
            this.journalMode = JournalMode.AUTOMATIC;
            this.autoCloseTimeout = -1L;
            this.migrationContainer = new MigrationContainer();
            this.migrationsNotRequiredFrom = new LinkedHashSet();
            this.migrationStartAndEndVersions = new LinkedHashSet();
            this.autoMigrationSpecs = new ArrayList();
            this.requireMigration = true;
            this.inMemoryTrackingTableMode = true;
            this.klass = JvmClassMappingKt.getKotlinClass(cls);
            this.context = context;
            this.name = str;
            this.factory = null;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\f"}, d2 = {"Landroidx/room/RoomDatabase$Callback;", "", "<init>", "()V", "onCreate", "", "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "connection", "Landroidx/sqlite/SQLiteConnection;", "onDestructiveMigration", "onOpen", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class Callback {
        public void onCreate(@NotNull SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onDestructiveMigration(@NotNull SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onOpen(@NotNull SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onCreate(@NotNull SQLiteConnection sQLiteConnection) {
            if (sQLiteConnection instanceof SupportSQLiteConnection) {
                onCreate(((SupportSQLiteConnection) sQLiteConnection).getDb());
            }
        }

        public void onDestructiveMigration(@NotNull SQLiteConnection sQLiteConnection) {
            if (sQLiteConnection instanceof SupportSQLiteConnection) {
                onDestructiveMigration(((SupportSQLiteConnection) sQLiteConnection).getDb());
            }
        }

        public void onOpen(@NotNull SQLiteConnection sQLiteConnection) {
            if (sQLiteConnection instanceof SupportSQLiteConnection) {
                onOpen(((SupportSQLiteConnection) sQLiteConnection).getDb());
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/room/RoomDatabase$Companion;", "", "<init>", "()V", "MAX_BIND_PARAMETER_CNT", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tH\u0000¢\u0006\u0002\b\nj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u000b"}, d2 = {"Landroidx/room/RoomDatabase$JournalMode;", "", "<init>", "(Ljava/lang/String;I)V", "AUTOMATIC", "TRUNCATE", "WRITE_AHEAD_LOGGING", "resolve", "context", "Landroid/content/Context;", "resolve$room_runtime_release", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class JournalMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ JournalMode[] $VALUES;
        public static final JournalMode AUTOMATIC = new JournalMode("AUTOMATIC", 0);
        public static final JournalMode TRUNCATE = new JournalMode("TRUNCATE", 1);
        public static final JournalMode WRITE_AHEAD_LOGGING = new JournalMode("WRITE_AHEAD_LOGGING", 2);

        private static final /* synthetic */ JournalMode[] $values() {
            return new JournalMode[]{AUTOMATIC, TRUNCATE, WRITE_AHEAD_LOGGING};
        }

        static {
            JournalMode[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private JournalMode(String str, int i) {
        }

        @NotNull
        public static EnumEntries<JournalMode> getEntries() {
            return $ENTRIES;
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) $VALUES.clone();
        }

        @NotNull
        public final JournalMode resolve$room_runtime_release(@NotNull Context context) {
            ActivityManager activityManager;
            if (this != AUTOMATIC) {
                return this;
            }
            Object systemService = context.getSystemService("activity");
            if (systemService instanceof ActivityManager) {
                activityManager = (ActivityManager) systemService;
            } else {
                activityManager = null;
            }
            if (activityManager != null && !activityManager.isLowRamDevice()) {
                return WRITE_AHEAD_LOGGING;
            }
            return TRUNCATE;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Landroidx/room/RoomDatabase$QueryCallback;", "", "onQuery", "", "sqlQuery", "", "bindArgs", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface QueryCallback {
        void onQuery(@NotNull String str, @NotNull List<? extends Object> list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit beginTransaction$lambda$8(RoomDatabase roomDatabase, SupportSQLiteDatabase supportSQLiteDatabase) {
        roomDatabase.internalBeginTransaction();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit endTransaction$lambda$9(RoomDatabase roomDatabase, SupportSQLiteDatabase supportSQLiteDatabase) {
        roomDatabase.internalEndTransaction();
        return Unit.INSTANCE;
    }

    private final void internalBeginTransaction() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        if (!writableDatabase.inTransaction()) {
            getInvalidationTracker().syncBlocking$room_runtime_release();
        }
        if (writableDatabase.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    private final void internalEndTransaction() {
        getOpenHelper().getWritableDatabase().endTransaction();
        if (!inTransaction()) {
            getInvalidationTracker().refreshVersionsAsync();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosed() {
        CoroutineScope coroutineScope = this.coroutineScope;
        RoomConnectionManager roomConnectionManager = null;
        if (coroutineScope == null) {
            coroutineScope = null;
        }
        CoroutineScopeKt.cancel$default(coroutineScope, null, 1, null);
        getInvalidationTracker().stop$room_runtime_release();
        RoomConnectionManager roomConnectionManager2 = this.connectionManager;
        if (roomConnectionManager2 != null) {
            roomConnectionManager = roomConnectionManager2;
        }
        roomConnectionManager.close();
    }

    public static /* synthetic */ Cursor query$default(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                cancellationSignal = null;
            }
            return roomDatabase.query(supportSQLiteQuery, cancellationSignal);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: query");
    }

    private final /* synthetic */ <T extends SupportSQLiteOpenHelper> T unwrapOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        if (supportSQLiteOpenHelper == null) {
            return null;
        }
        while (true) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (androidx.activity.Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(supportSQLiteOpenHelper)) {
                return (T) supportSQLiteOpenHelper;
            }
            if (!(supportSQLiteOpenHelper instanceof DelegatingOpenHelper)) {
                return null;
            }
            supportSQLiteOpenHelper = (T) ((DelegatingOpenHelper) supportSQLiteOpenHelper).getDelegate();
        }
    }

    public final void addTypeConverter$room_runtime_release(@NotNull KClass<?> kClass, @NotNull Object obj) {
        this.typeConverters.put(kClass, obj);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void assertNotMainThread() {
        if (this.allowMainThreadQueries || !isMainThread$room_runtime_release()) {
            return;
        }
        throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void assertNotSuspendingTransaction() {
        if (inCompatibilityMode$room_runtime_release() && !inTransaction() && this.suspendingTransactionId.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated(message = "beginTransaction() is deprecated", replaceWith = @ReplaceWith(expression = "runInTransaction(Runnable)", imports = {}))
    public void beginTransaction() {
        assertNotMainThread();
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser == null) {
            internalBeginTransaction();
        } else {
            autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.Wwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit beginTransaction$lambda$8;
                    beginTransaction$lambda$8 = RoomDatabase.beginTransaction$lambda$8(RoomDatabase.this, (SupportSQLiteDatabase) obj);
                    return beginTransaction$lambda$8;
                }
            });
        }
    }

    @WorkerThread
    public abstract void clearAllTables();

    public void close() {
        this.closeBarrier.close$room_runtime_release();
    }

    @NotNull
    public SupportSQLiteStatement compileStatement(@NotNull String str) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().compileStatement(str);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public List<Migration> createAutoMigrations(@NotNull Map<KClass<? extends AutoMigrationSpec>, ? extends AutoMigrationSpec> map) {
        Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> linkedHashMap = new LinkedHashMap<>(MapsKt.mapCapacity(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(JvmClassMappingKt.getJavaClass((KClass) entry.getKey()), entry.getValue());
        }
        return getAutoMigrations(linkedHashMap);
    }

    @NotNull
    public final RoomConnectionManager createConnectionManager$room_runtime_release(@NotNull DatabaseConfiguration databaseConfiguration) {
        RoomOpenDelegate roomOpenDelegate;
        try {
            roomOpenDelegate = (RoomOpenDelegate) createOpenDelegate();
        } catch (NotImplementedError unused) {
            roomOpenDelegate = null;
        }
        if (roomOpenDelegate == null) {
            return new RoomConnectionManager(databaseConfiguration, new Function1() { // from class: androidx.room.Wwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    SupportSQLiteOpenHelper createOpenHelper;
                    createOpenHelper = RoomDatabase.this.createOpenHelper((DatabaseConfiguration) obj);
                    return createOpenHelper;
                }
            });
        }
        return new RoomConnectionManager(databaseConfiguration, roomOpenDelegate);
    }

    @NotNull
    public abstract InvalidationTracker createInvalidationTracker();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public RoomOpenDelegateMarker createOpenDelegate() {
        throw new NotImplementedError(null, 1, null);
    }

    @Deprecated(message = "No longer implemented by generated")
    @NotNull
    public SupportSQLiteOpenHelper createOpenHelper(@NotNull DatabaseConfiguration databaseConfiguration) {
        throw new NotImplementedError(null, 1, null);
    }

    @Deprecated(message = "endTransaction() is deprecated", replaceWith = @ReplaceWith(expression = "runInTransaction(Runnable)", imports = {}))
    public void endTransaction() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser == null) {
            internalEndTransaction();
        } else {
            autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.Wwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit endTransaction$lambda$9;
                    endTransaction$lambda$9 = RoomDatabase.endTransaction$lambda$9(RoomDatabase.this, (SupportSQLiteDatabase) obj);
                    return endTransaction$lambda$9;
                }
            });
        }
    }

    @JvmSuppressWildcards
    @NotNull
    @Deprecated(message = "No longer implemented by generated")
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public List<Migration> getAutoMigrations(@NotNull Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> map) {
        return CollectionsKt.emptyList();
    }

    @NotNull
    public final CloseBarrier getCloseBarrier$room_runtime_release() {
        return this.closeBarrier;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final CoroutineScope getCoroutineScope() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope == null) {
            return null;
        }
        return coroutineScope;
    }

    @NotNull
    public InvalidationTracker getInvalidationTracker() {
        InvalidationTracker invalidationTracker = this.internalTracker;
        if (invalidationTracker == null) {
            return null;
        }
        return invalidationTracker;
    }

    @NotNull
    public SupportSQLiteOpenHelper getOpenHelper() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime_release = roomConnectionManager.getSupportOpenHelper$room_runtime_release();
        if (supportOpenHelper$room_runtime_release != null) {
            return supportOpenHelper$room_runtime_release;
        }
        throw new IllegalStateException("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final CoroutineContext getQueryContext() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope == null) {
            coroutineScope = null;
        }
        return coroutineScope.getCoroutineContext();
    }

    @NotNull
    public Executor getQueryExecutor() {
        Executor executor = this.internalQueryExecutor;
        if (executor == null) {
            return null;
        }
        return executor;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public Set<KClass<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecClasses() {
        Set<Class<? extends AutoMigrationSpec>> requiredAutoMigrationSpecs = getRequiredAutoMigrationSpecs();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(requiredAutoMigrationSpecs, 10));
        Iterator<T> it = requiredAutoMigrationSpecs.iterator();
        while (it.hasNext()) {
            arrayList.add(JvmClassMappingKt.getKotlinClass((Class) it.next()));
        }
        return CollectionsKt.toSet(arrayList);
    }

    @Deprecated(message = "No longer implemented by generated")
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return SetsKt.emptySet();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public Map<KClass<?>, List<KClass<?>>> getRequiredTypeConverterClasses() {
        Set<Map.Entry<Class<?>, List<Class<?>>>> entrySet = getRequiredTypeConverters().entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(entrySet, 10)), 16));
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            KClass kotlinClass = JvmClassMappingKt.getKotlinClass((Class) entry.getKey());
            List<Class> list = (List) entry.getValue();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (Class cls : list) {
                arrayList.add(JvmClassMappingKt.getKotlinClass(cls));
            }
            Pair pair = TuplesKt.to(kotlinClass, arrayList);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    @NotNull
    public final Map<KClass<?>, List<KClass<?>>> getRequiredTypeConverterClassesMap$room_runtime_release() {
        return getRequiredTypeConverterClasses();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return MapsKt.emptyMap();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final ThreadLocal<Integer> getSuspendingTransactionId() {
        return this.suspendingTransactionId;
    }

    @NotNull
    public final CoroutineContext getTransactionContext$room_runtime_release() {
        CoroutineContext coroutineContext = this.transactionContext;
        if (coroutineContext == null) {
            return null;
        }
        return coroutineContext;
    }

    @NotNull
    public Executor getTransactionExecutor() {
        Executor executor = this.internalTransactionExecutor;
        if (executor == null) {
            return null;
        }
        return executor;
    }

    @Deprecated(message = "No longer called by generated implementation")
    @Nullable
    public <T> T getTypeConverter(@NotNull Class<T> cls) {
        return (T) this.typeConverters.get(JvmClassMappingKt.getKotlinClass(cls));
    }

    public final boolean getUseTempTrackingTable$room_runtime_release() {
        return this.useTempTrackingTable;
    }

    public final boolean inCompatibilityMode$room_runtime_release() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        if (roomConnectionManager.getSupportOpenHelper$room_runtime_release() != null) {
            return true;
        }
        return false;
    }

    public boolean inTransaction() {
        if (isOpenInternal() && getOpenHelper().getWritableDatabase().inTransaction()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e3 A[LOOP:0: B:49:0x00e3->B:54:0x00ec, LOOP_START, PHI: r0 
      PHI: (r0v28 androidx.sqlite.db.SupportSQLiteOpenHelper) = (r0v27 androidx.sqlite.db.SupportSQLiteOpenHelper), (r0v30 androidx.sqlite.db.SupportSQLiteOpenHelper) binds: [B:47:0x00df, B:54:0x00ec] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0133 A[RETURN] */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void init(@org.jetbrains.annotations.NotNull androidx.room.DatabaseConfiguration r6) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.init(androidx.room.DatabaseConfiguration):void");
    }

    @Deprecated(message = "No longer called by generated")
    public void internalInitInvalidationTracker(@NotNull SupportSQLiteDatabase supportSQLiteDatabase) {
        internalInitInvalidationTracker(new SupportSQLiteConnection(supportSQLiteDatabase));
    }

    public final boolean isMainThread$room_runtime_release() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return true;
        }
        return false;
    }

    public boolean isOpen() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            return autoCloser.isActive();
        }
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        return roomConnectionManager.isSupportDatabaseOpen();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final boolean isOpenInternal() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        return roomConnectionManager.isSupportDatabaseOpen();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void performClear(boolean z, @NotNull String... strArr) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new RoomDatabase$performClear$1(this, z, strArr, null));
    }

    @JvmOverloads
    @NotNull
    public final Cursor query(@NotNull SupportSQLiteQuery supportSQLiteQuery) {
        return query$default(this, supportSQLiteQuery, null, 2, null);
    }

    public void runInTransaction(@NotNull Runnable runnable) {
        beginTransaction();
        try {
            runnable.run();
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    @Deprecated(message = "setTransactionSuccessful() is deprecated", replaceWith = @ReplaceWith(expression = "runInTransaction(Runnable)", imports = {}))
    public void setTransactionSuccessful() {
        getOpenHelper().getWritableDatabase().setTransactionSuccessful();
    }

    public final void setUseTempTrackingTable$room_runtime_release(boolean z) {
        this.useTempTrackingTable = z;
    }

    @Nullable
    public final <R> Object useConnection$room_runtime_release(boolean z, @NotNull Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, @NotNull Continuation<? super R> continuation) {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            roomConnectionManager = null;
        }
        return roomConnectionManager.useConnection(z, function2, continuation);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public final <T> T getTypeConverter(@NotNull KClass<T> kClass) {
        return (T) this.typeConverters.get(kClass);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final void internalInitInvalidationTracker(@NotNull SQLiteConnection sQLiteConnection) {
        getInvalidationTracker().internalInit$room_runtime_release(sQLiteConnection);
    }

    @NotNull
    public Cursor query(@NotNull String str, @Nullable Object[] objArr) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().query(new SimpleSQLiteQuery(str, objArr));
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\n2\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u000b\"\u00020\bH\u0016¢\u0006\u0002\u0010\fJ\u0016\u0010\t\u001a\u00020\n2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\b0\rH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\bH\u0007J \u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u00110\u0011H\u0016J \u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0016J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006J5\u0010\u0019\u001a\"\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u001b\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u001dJ5\u0010\u001e\u001a\"\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u001b\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u001fR&\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Landroidx/room/RoomDatabase$MigrationContainer;", "", "<init>", "()V", "migrations", "", "", "Ljava/util/TreeMap;", "Landroidx/room/migration/Migration;", "addMigrations", "", "", "([Landroidx/room/migration/Migration;)V", "", "addMigration", "migration", "getMigrations", "", "findMigrationPath", "start", "end", "contains", "", "startVersion", "endVersion", "getSortedNodes", "Lkotlin/Pair;", "", "migrationStart", "getSortedNodes$room_runtime_release", "getSortedDescendingNodes", "getSortedDescendingNodes$room_runtime_release", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$MigrationContainer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,2120:1\n13402#2,2:2121\n1863#3,2:2123\n381#4,7:2125\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$MigrationContainer\n*L\n1757#1:2121,2\n1767#1:2123,2\n1780#1:2125,7\n*E\n"})
    /* loaded from: classes3.dex */
    public static class MigrationContainer {
        @NotNull
        private final Map<Integer, TreeMap<Integer, Migration>> migrations = new LinkedHashMap();

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void addMigration(@NotNull Migration migration) {
            int i = migration.startVersion;
            int i2 = migration.endVersion;
            Map<Integer, TreeMap<Integer, Migration>> map = this.migrations;
            Integer valueOf = Integer.valueOf(i);
            TreeMap<Integer, Migration> treeMap = map.get(valueOf);
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                map.put(valueOf, treeMap);
            }
            TreeMap<Integer, Migration> treeMap2 = treeMap;
            if (treeMap2.containsKey(Integer.valueOf(i2))) {
                Objects.toString(treeMap2.get(Integer.valueOf(i2)));
                migration.toString();
            }
            treeMap2.put(Integer.valueOf(i2), migration);
        }

        public void addMigrations(@NotNull List<? extends Migration> list) {
            for (Migration migration : list) {
                addMigration(migration);
            }
        }

        public final boolean contains(int i, int i2) {
            return MigrationUtil.contains(this, i, i2);
        }

        @Nullable
        public List<Migration> findMigrationPath(int i, int i2) {
            return MigrationUtil.findMigrationPath(this, i, i2);
        }

        @NotNull
        public Map<Integer, Map<Integer, Migration>> getMigrations() {
            return this.migrations;
        }

        @Nullable
        public final Pair<Map<Integer, Migration>, Iterable<Integer>> getSortedDescendingNodes$room_runtime_release(int i) {
            TreeMap<Integer, Migration> treeMap = this.migrations.get(Integer.valueOf(i));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.to(treeMap, treeMap.descendingKeySet());
        }

        @Nullable
        public final Pair<Map<Integer, Migration>, Iterable<Integer>> getSortedNodes$room_runtime_release(int i) {
            TreeMap<Integer, Migration> treeMap = this.migrations.get(Integer.valueOf(i));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.to(treeMap, treeMap.keySet());
        }

        public void addMigrations(@NotNull Migration... migrationArr) {
            for (Migration migration : migrationArr) {
                addMigration(migration);
            }
        }
    }

    @JvmOverloads
    @NotNull
    public Cursor query(@NotNull SupportSQLiteQuery supportSQLiteQuery, @Nullable CancellationSignal cancellationSignal) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        if (cancellationSignal != null) {
            return getOpenHelper().getWritableDatabase().query(supportSQLiteQuery, cancellationSignal);
        }
        return getOpenHelper().getWritableDatabase().query(supportSQLiteQuery);
    }

    public <V> V runInTransaction(@NotNull Callable<V> callable) {
        beginTransaction();
        try {
            V call = callable.call();
            setTransactionSuccessful();
            return call;
        } finally {
            endTransaction();
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "This property is always null and will be removed in a future version.")
    public static /* synthetic */ void getMCallbacks$annotations() {
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "This property is always null and will be removed in a future version.")
    public static /* synthetic */ void getMDatabase$annotations() {
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;", "", "<init>", "()V", "onOpenPrepackagedDatabase", "", "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class PrepackagedDatabaseCallback {
        public void onOpenPrepackagedDatabase(@NotNull SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }
}
