package androidx.work;

import android.annotation.SuppressLint;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \u00122\u00020\u0001:\u0002\u0011\u0012BI\b\u0000\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0003¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u0013"}, d2 = {"Landroidx/work/WorkQuery;", "", "ids", "", "Ljava/util/UUID;", "uniqueWorkNames", "", "tags", "states", "Landroidx/work/WorkInfo$State;", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getIds", "()Ljava/util/List;", "getUniqueWorkNames", "getTags", "getStates", "Builder", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WorkQuery {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<UUID> ids;
    @NotNull
    private final List<WorkInfo.State> states;
    @NotNull
    private final List<String> tags;
    @NotNull
    private final List<String> uniqueWorkNames;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\f\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\rJ\u0014\u0010\u000e\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\rJ\u0014\u0010\u000f\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\rJ\u0014\u0010\u0010\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\rJ\u0006\u0010\u0011\u001a\u00020\u0012R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/work/WorkQuery$Builder;", "", "<init>", "()V", "ids", "", "Ljava/util/UUID;", "uniqueWorkNames", "", "tags", "states", "Landroidx/work/WorkInfo$State;", "addIds", "", "addUniqueWorkNames", "addTags", "addStates", "build", "Landroidx/work/WorkQuery;", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final List<UUID> ids;
        @NotNull
        private final List<WorkInfo.State> states;
        @NotNull
        private final List<String> tags;
        @NotNull
        private final List<String> uniqueWorkNames;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007J\u0016\u0010\t\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0007H\u0007J\u0016\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0007H\u0007J\u0016\u0010\u000e\u001a\u00020\u00052\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0007H\u0007¨\u0006\u0011"}, d2 = {"Landroidx/work/WorkQuery$Builder$Companion;", "", "<init>", "()V", "fromIds", "Landroidx/work/WorkQuery$Builder;", "ids", "", "Ljava/util/UUID;", "fromUniqueWorkNames", "uniqueWorkNames", "", "fromTags", "tags", "fromStates", "states", "Landroidx/work/WorkInfo$State;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            @SuppressLint({"BuilderSetStyle"})
            @NotNull
            public final Builder fromIds(@NotNull List<UUID> list) {
                Builder builder = new Builder(null);
                builder.addIds(list);
                return builder;
            }

            @JvmStatic
            @SuppressLint({"BuilderSetStyle"})
            @NotNull
            public final Builder fromStates(@NotNull List<? extends WorkInfo.State> list) {
                Builder builder = new Builder(null);
                builder.addStates(list);
                return builder;
            }

            @JvmStatic
            @SuppressLint({"BuilderSetStyle"})
            @NotNull
            public final Builder fromTags(@NotNull List<String> list) {
                Builder builder = new Builder(null);
                builder.addTags(list);
                return builder;
            }

            @JvmStatic
            @SuppressLint({"BuilderSetStyle"})
            @NotNull
            public final Builder fromUniqueWorkNames(@NotNull List<String> list) {
                Builder builder = new Builder(null);
                builder.addUniqueWorkNames(list);
                return builder;
            }

            private Companion() {
            }
        }

        public /* synthetic */ Builder(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @SuppressLint({"BuilderSetStyle"})
        @NotNull
        public static final Builder fromIds(@NotNull List<UUID> list) {
            return Companion.fromIds(list);
        }

        @JvmStatic
        @SuppressLint({"BuilderSetStyle"})
        @NotNull
        public static final Builder fromStates(@NotNull List<? extends WorkInfo.State> list) {
            return Companion.fromStates(list);
        }

        @JvmStatic
        @SuppressLint({"BuilderSetStyle"})
        @NotNull
        public static final Builder fromTags(@NotNull List<String> list) {
            return Companion.fromTags(list);
        }

        @JvmStatic
        @SuppressLint({"BuilderSetStyle"})
        @NotNull
        public static final Builder fromUniqueWorkNames(@NotNull List<String> list) {
            return Companion.fromUniqueWorkNames(list);
        }

        @NotNull
        public final Builder addIds(@NotNull List<UUID> list) {
            CollectionsKt.addAll(this.ids, list);
            return this;
        }

        @NotNull
        public final Builder addStates(@NotNull List<? extends WorkInfo.State> list) {
            CollectionsKt.addAll(this.states, list);
            return this;
        }

        @NotNull
        public final Builder addTags(@NotNull List<String> list) {
            CollectionsKt.addAll(this.tags, list);
            return this;
        }

        @NotNull
        public final Builder addUniqueWorkNames(@NotNull List<String> list) {
            CollectionsKt.addAll(this.uniqueWorkNames, list);
            return this;
        }

        @NotNull
        public final WorkQuery build() {
            if (this.ids.isEmpty() && this.uniqueWorkNames.isEmpty() && this.tags.isEmpty() && this.states.isEmpty()) {
                throw new IllegalArgumentException("Must specify ids, uniqueNames, tags or states when building a WorkQuery");
            }
            return new WorkQuery(this.ids, this.uniqueWorkNames, this.tags, this.states);
        }

        private Builder() {
            this.ids = new ArrayList();
            this.uniqueWorkNames = new ArrayList();
            this.tags = new ArrayList();
            this.states = new ArrayList();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007J!\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\t\"\u00020\bH\u0007¢\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0007H\u0007J!\u0010\u000b\u001a\u00020\u00052\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\t\"\u00020\rH\u0007¢\u0006\u0002\u0010\u000eJ!\u0010\u000f\u001a\u00020\u00052\u0012\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\t\"\u00020\rH\u0007¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u000f\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u0007H\u0007J\u0016\u0010\u0011\u001a\u00020\u00052\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0007H\u0007J!\u0010\u0011\u001a\u00020\u00052\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130\t\"\u00020\u0013H\u0007¢\u0006\u0002\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/work/WorkQuery$Companion;", "", "<init>", "()V", "fromIds", "Landroidx/work/WorkQuery;", "ids", "", "Ljava/util/UUID;", "", "([Ljava/util/UUID;)Landroidx/work/WorkQuery;", "fromTags", "tags", "", "([Ljava/lang/String;)Landroidx/work/WorkQuery;", "fromUniqueWorkNames", "uniqueWorkNames", "fromStates", "states", "Landroidx/work/WorkInfo$State;", "([Landroidx/work/WorkInfo$State;)Landroidx/work/WorkQuery;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final WorkQuery fromIds(@NotNull List<UUID> list) {
            return new WorkQuery(list, null, null, null, 14, null);
        }

        @JvmStatic
        @NotNull
        public final WorkQuery fromStates(@NotNull List<? extends WorkInfo.State> list) {
            return new WorkQuery(null, null, null, list, 7, null);
        }

        @JvmStatic
        @NotNull
        public final WorkQuery fromTags(@NotNull List<String> list) {
            return new WorkQuery(null, null, list, null, 11, null);
        }

        @JvmStatic
        @NotNull
        public final WorkQuery fromUniqueWorkNames(@NotNull String... strArr) {
            return new WorkQuery(null, ArraysKt.toList(strArr), null, null, 13, null);
        }

        private Companion() {
        }

        @JvmStatic
        @NotNull
        public final WorkQuery fromIds(@NotNull UUID... uuidArr) {
            return new WorkQuery(ArraysKt.toList(uuidArr), null, null, null, 14, null);
        }

        @JvmStatic
        @NotNull
        public final WorkQuery fromStates(@NotNull WorkInfo.State... stateArr) {
            return new WorkQuery(null, null, null, ArraysKt.toList(stateArr), 7, null);
        }

        @JvmStatic
        @NotNull
        public final WorkQuery fromTags(@NotNull String... strArr) {
            return new WorkQuery(null, null, ArraysKt.toList(strArr), null, 11, null);
        }

        @JvmStatic
        @NotNull
        public final WorkQuery fromUniqueWorkNames(@NotNull List<String> list) {
            return new WorkQuery(null, list, null, null, 13, null);
        }
    }

    public WorkQuery() {
        this(null, null, null, null, 15, null);
    }

    @JvmStatic
    @NotNull
    public static final WorkQuery fromIds(@NotNull List<UUID> list) {
        return Companion.fromIds(list);
    }

    @JvmStatic
    @NotNull
    public static final WorkQuery fromStates(@NotNull List<? extends WorkInfo.State> list) {
        return Companion.fromStates(list);
    }

    @JvmStatic
    @NotNull
    public static final WorkQuery fromTags(@NotNull List<String> list) {
        return Companion.fromTags(list);
    }

    @JvmStatic
    @NotNull
    public static final WorkQuery fromUniqueWorkNames(@NotNull List<String> list) {
        return Companion.fromUniqueWorkNames(list);
    }

    @NotNull
    public final List<UUID> getIds() {
        return this.ids;
    }

    @NotNull
    public final List<WorkInfo.State> getStates() {
        return this.states;
    }

    @NotNull
    public final List<String> getTags() {
        return this.tags;
    }

    @NotNull
    public final List<String> getUniqueWorkNames() {
        return this.uniqueWorkNames;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WorkQuery(@NotNull List<UUID> list, @NotNull List<String> list2, @NotNull List<String> list3, @NotNull List<? extends WorkInfo.State> list4) {
        this.ids = list;
        this.uniqueWorkNames = list2;
        this.tags = list3;
        this.states = list4;
    }

    @JvmStatic
    @NotNull
    public static final WorkQuery fromIds(@NotNull UUID... uuidArr) {
        return Companion.fromIds(uuidArr);
    }

    @JvmStatic
    @NotNull
    public static final WorkQuery fromStates(@NotNull WorkInfo.State... stateArr) {
        return Companion.fromStates(stateArr);
    }

    @JvmStatic
    @NotNull
    public static final WorkQuery fromTags(@NotNull String... strArr) {
        return Companion.fromTags(strArr);
    }

    @JvmStatic
    @NotNull
    public static final WorkQuery fromUniqueWorkNames(@NotNull String... strArr) {
        return Companion.fromUniqueWorkNames(strArr);
    }

    public /* synthetic */ WorkQuery(List list, List list2, List list3, List list4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? CollectionsKt.emptyList() : list3, (i & 8) != 0 ? CollectionsKt.emptyList() : list4);
    }
}
