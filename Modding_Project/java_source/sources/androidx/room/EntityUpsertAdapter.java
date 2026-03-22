package androidx.room;

import android.database.SQLException;
import androidx.annotation.RestrictTo;
import androidx.sqlite.SQLiteConnection;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 $*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001$B#\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u000eJ'\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\u000f\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0010\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0012J\u001d\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0015J'\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\u000f\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0010¢\u0006\u0002\u0010\u0018J \u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\f2\u0010\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0019J-\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00140\u001b2\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\u000f\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0010¢\u0006\u0002\u0010\u001cJ&\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00140\u001b2\u0006\u0010\u000b\u001a\u00020\f2\u0010\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0019J/\u0010\u001d\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u00102\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\u000f\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0010¢\u0006\u0002\u0010\u001eJ-\u0010\u001d\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u00102\u0006\u0010\u000b\u001a\u00020\f2\u0010\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0019¢\u0006\u0002\u0010\u001fJ\u0014\u0010 \u001a\u00020\n2\n\u0010!\u001a\u00060\"j\u0002`#H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Landroidx/room/EntityUpsertAdapter;", "T", "", "entityInsertAdapter", "Landroidx/room/EntityInsertAdapter;", "updateAdapter", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "<init>", "(Landroidx/room/EntityInsertAdapter;Landroidx/room/EntityDeleteOrUpdateAdapter;)V", "upsert", "", "connection", "Landroidx/sqlite/SQLiteConnection;", "entity", "(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V", "entities", "", "(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)V", "", "upsertAndReturnId", "", "(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J", "upsertAndReturnIdsArray", "", "(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)[J", "", "upsertAndReturnIdsList", "", "(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)Ljava/util/List;", "upsertAndReturnIdsArrayBox", "(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)[Ljava/lang/Long;", "(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)[Ljava/lang/Long;", "checkUniquenessException", "ex", "Landroid/database/SQLException;", "Landroidx/sqlite/SQLiteException;", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nEntityUpsertAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityUpsertAdapter.kt\nandroidx/room/EntityUpsertAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,238:1\n13402#2,2:239\n13402#2,2:243\n1863#3,2:241\n1863#3,2:245\n*S KotlinDebug\n*F\n+ 1 EntityUpsertAdapter.kt\nandroidx/room/EntityUpsertAdapter\n*L\n61#1:239,2\n139#1:243,2\n73#1:241,2\n157#1:245,2\n*E\n"})
/* loaded from: classes3.dex */
public final class EntityUpsertAdapter<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String ErrorMsg = "unique";
    @NotNull
    private static final String SQLITE_CONSTRAINT_PRIMARYKEY = "1555";
    @NotNull
    private static final String SQLITE_CONSTRAINT_UNIQUE = "2067";
    @NotNull
    private final EntityInsertAdapter<T> entityInsertAdapter;
    @NotNull
    private final EntityDeleteOrUpdateAdapter<T> updateAdapter;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/room/EntityUpsertAdapter$Companion;", "", "<init>", "()V", "SQLITE_CONSTRAINT_PRIMARYKEY", "", "SQLITE_CONSTRAINT_UNIQUE", "ErrorMsg", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public EntityUpsertAdapter(@NotNull EntityInsertAdapter<T> entityInsertAdapter, @NotNull EntityDeleteOrUpdateAdapter<T> entityDeleteOrUpdateAdapter) {
        this.entityInsertAdapter = entityInsertAdapter;
        this.updateAdapter = entityDeleteOrUpdateAdapter;
    }

    private final void checkUniquenessException(SQLException sQLException) {
        String message = sQLException.getMessage();
        if (message != null) {
            if (!StringsKt.contains((CharSequence) message, (CharSequence) ErrorMsg, true) && !StringsKt.contains$default((CharSequence) message, (CharSequence) SQLITE_CONSTRAINT_UNIQUE, false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) message, (CharSequence) SQLITE_CONSTRAINT_PRIMARYKEY, false, 2, (Object) null)) {
                throw sQLException;
            }
            return;
        }
        throw sQLException;
    }

    public final void upsert(@NotNull SQLiteConnection sQLiteConnection, @Nullable T t) {
        try {
            this.entityInsertAdapter.insert(sQLiteConnection, (SQLiteConnection) t);
        } catch (SQLException e) {
            checkUniquenessException(e);
            this.updateAdapter.handle(sQLiteConnection, t);
        }
    }

    public final long upsertAndReturnId(@NotNull SQLiteConnection sQLiteConnection, @Nullable T t) {
        try {
            return this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, t);
        } catch (SQLException e) {
            checkUniquenessException(e);
            this.updateAdapter.handle(sQLiteConnection, t);
            return -1L;
        }
    }

    @NotNull
    public final long[] upsertAndReturnIdsArray(@NotNull SQLiteConnection sQLiteConnection, @Nullable T[] tArr) {
        long j;
        if (tArr == null) {
            return new long[0];
        }
        int length = tArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            try {
                j = this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, tArr[i]);
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, tArr[i]);
                j = -1;
            }
            jArr[i] = j;
        }
        return jArr;
    }

    @NotNull
    public final Long[] upsertAndReturnIdsArrayBox(@NotNull SQLiteConnection sQLiteConnection, @Nullable T[] tArr) {
        long j;
        if (tArr == null) {
            return new Long[0];
        }
        int length = tArr.length;
        Long[] lArr = new Long[length];
        for (int i = 0; i < length; i++) {
            try {
                j = this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, tArr[i]);
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, tArr[i]);
                j = -1;
            }
            lArr[i] = Long.valueOf(j);
        }
        return lArr;
    }

    @NotNull
    public final List<Long> upsertAndReturnIdsList(@NotNull SQLiteConnection sQLiteConnection, @Nullable T[] tArr) {
        if (tArr == null) {
            return CollectionsKt.emptyList();
        }
        List createListBuilder = CollectionsKt.createListBuilder();
        for (T t : tArr) {
            try {
                createListBuilder.add(Long.valueOf(this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, t)));
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, t);
                createListBuilder.add(-1L);
            }
        }
        return CollectionsKt.build(createListBuilder);
    }

    public final void upsert(@NotNull SQLiteConnection sQLiteConnection, @Nullable T[] tArr) {
        if (tArr == null) {
            return;
        }
        for (T t : tArr) {
            try {
                this.entityInsertAdapter.insert(sQLiteConnection, (SQLiteConnection) t);
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, t);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final long[] upsertAndReturnIdsArray(@NotNull SQLiteConnection sQLiteConnection, @Nullable Collection<? extends T> collection) {
        long j;
        if (collection == null) {
            return new long[0];
        }
        int size = collection.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            try {
                j = this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, CollectionsKt.elementAt(collection, i));
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, CollectionsKt.elementAt(collection, i));
                j = -1;
            }
            jArr[i] = j;
        }
        return jArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final Long[] upsertAndReturnIdsArrayBox(@NotNull SQLiteConnection sQLiteConnection, @Nullable Collection<? extends T> collection) {
        long j;
        if (collection == null) {
            return new Long[0];
        }
        int size = collection.size();
        Long[] lArr = new Long[size];
        for (int i = 0; i < size; i++) {
            try {
                j = this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, CollectionsKt.elementAt(collection, i));
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, CollectionsKt.elementAt(collection, i));
                j = -1;
            }
            lArr[i] = Long.valueOf(j);
        }
        return lArr;
    }

    public final void upsert(@NotNull SQLiteConnection sQLiteConnection, @Nullable Iterable<? extends T> iterable) {
        if (iterable == null) {
            return;
        }
        for (T t : iterable) {
            try {
                this.entityInsertAdapter.insert(sQLiteConnection, (SQLiteConnection) t);
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, t);
            }
        }
    }

    @NotNull
    public final List<Long> upsertAndReturnIdsList(@NotNull SQLiteConnection sQLiteConnection, @Nullable Collection<? extends T> collection) {
        if (collection == null) {
            return CollectionsKt.emptyList();
        }
        List createListBuilder = CollectionsKt.createListBuilder();
        for (T t : collection) {
            try {
                createListBuilder.add(Long.valueOf(this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, t)));
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, t);
                createListBuilder.add(-1L);
            }
        }
        return CollectionsKt.build(createListBuilder);
    }
}
