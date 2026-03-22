package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J\u0012\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Landroidx/work/impl/model/WorkProgressDao_Impl;", "Landroidx/work/impl/model/WorkProgressDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "__insertAdapterOfWorkProgress", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/WorkProgress;", "insert", "", "progress", "getProgressForWorkSpecId", "Landroidx/work/Data;", "workSpecId", "", "delete", "deleteAll", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WorkProgressDao_Impl implements WorkProgressDao {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final RoomDatabase __db;
    @NotNull
    private final EntityInsertAdapter<WorkProgress> __insertAdapterOfWorkProgress = new EntityInsertAdapter<WorkProgress>() { // from class: androidx.work.impl.model.WorkProgressDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement sQLiteStatement, WorkProgress workProgress) {
            sQLiteStatement.mo48bindText(1, workProgress.getWorkSpecId());
            sQLiteStatement.mo44bindBlob(2, Data.Companion.toByteArrayInternalV1(workProgress.getProgress()));
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkProgressDao_Impl$Companion;", "", "<init>", "()V", "getRequiredConverters", "", "Lkotlin/reflect/KClass;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<KClass<?>> getRequiredConverters() {
            return CollectionsKt.emptyList();
        }

        private Companion() {
        }
    }

    public WorkProgressDao_Impl(@NotNull RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit delete$lambda$2(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteAll$lambda$3(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.step();
            prepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Data getProgressForWorkSpecId$lambda$1(String str, String str2, SQLiteConnection sQLiteConnection) {
        byte[] blob;
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.mo48bindText(1, str2);
            Data data = null;
            if (prepare.step()) {
                if (prepare.isNull(0)) {
                    blob = null;
                } else {
                    blob = prepare.getBlob(0);
                }
                if (blob != null) {
                    data = Data.Companion.fromByteArray(blob);
                }
            }
            return data;
        } finally {
            prepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insert$lambda$0(WorkProgressDao_Impl workProgressDao_Impl, WorkProgress workProgress, SQLiteConnection sQLiteConnection) {
        workProgressDao_Impl.__insertAdapterOfWorkProgress.insert(sQLiteConnection, (SQLiteConnection) workProgress);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void delete(@NotNull final String str) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit delete$lambda$2;
                delete$lambda$2 = WorkProgressDao_Impl.delete$lambda$2(r1, str, (SQLiteConnection) obj);
                return delete$lambda$2;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void deleteAll() {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit deleteAll$lambda$3;
                deleteAll$lambda$3 = WorkProgressDao_Impl.deleteAll$lambda$3(r1, (SQLiteConnection) obj);
                return deleteAll$lambda$3;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    @Nullable
    public Data getProgressForWorkSpecId(@NotNull final String str) {
        return (Data) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Data progressForWorkSpecId$lambda$1;
                progressForWorkSpecId$lambda$1 = WorkProgressDao_Impl.getProgressForWorkSpecId$lambda$1(r1, str, (SQLiteConnection) obj);
                return progressForWorkSpecId$lambda$1;
            }
        });
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void insert(@NotNull final WorkProgress workProgress) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.Wwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit insert$lambda$0;
                insert$lambda$0 = WorkProgressDao_Impl.insert$lambda$0(WorkProgressDao_Impl.this, workProgress, (SQLiteConnection) obj);
                return insert$lambda$0;
            }
        });
    }
}
