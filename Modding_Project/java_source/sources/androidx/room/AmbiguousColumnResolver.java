package androidx.room;

import androidx.annotation.RestrictTo;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001:\u0003\u001d\u001e\u001fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J5\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00050\u0005H\u0007¢\u0006\u0002\u0010\u000bJ5\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\u00052\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00050\u0005H\u0007¢\u0006\u0002\u0010\fJO\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\b2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u00052$\u0010\u0012\u001a \u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\b\u0012\u0004\u0012\u00020\u000e0\u0013H\u0002¢\u0006\u0002\u0010\u0015JV\u0010\u0016\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u00172\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00170\b0\b2\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00170\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00142\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00170\b\u0012\u0004\u0012\u00020\u000e0\u001cH\u0002¨\u0006 "}, d2 = {"Landroidx/room/AmbiguousColumnResolver;", "", "<init>", "()V", "resolve", "", "", "resultColumns", "", "", "mappings", "(Ljava/util/List;[[Ljava/lang/String;)[[I", "([Ljava/lang/String;[[Ljava/lang/String;)[[I", "rabinKarpSearch", "", "content", "Landroidx/room/AmbiguousColumnResolver$ResultColumn;", "pattern", "onHashMatch", "Lkotlin/Function3;", "", "(Ljava/util/List;[Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V", "dfs", "T", "current", "", "depth", "block", "Lkotlin/Function1;", "ResultColumn", "Match", "Solution", "room-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nAmbiguousColumnResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,273:1\n37#2:274\n36#2,3:275\n37#2:300\n36#2,3:301\n1#3:278\n13402#4,2:279\n13467#4,3:281\n13467#4,2:284\n11158#4:286\n11493#4,2:287\n11495#4:291\n13469#4:292\n11158#4:306\n11493#4,2:307\n11495#4:311\n1863#5,2:289\n1734#5,3:293\n1557#5:296\n1628#5,3:297\n1863#5,2:304\n295#5,2:309\n*S KotlinDebug\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver\n*L\n65#1:274\n65#1:275,3\n171#1:300\n171#1:301,3\n102#1:279,2\n104#1:281,3\n113#1:284,2\n138#1:286\n138#1:287,2\n138#1:291\n113#1:292\n120#1:306\n120#1:307,2\n120#1:311\n140#1:289,2\n161#1:293,3\n171#1:296\n171#1:297,3\n208#1:304,2\n122#1:309,2\n*E\n"})
/* loaded from: classes3.dex */
public final class AmbiguousColumnResolver {
    @NotNull
    public static final AmbiguousColumnResolver INSTANCE = new AmbiguousColumnResolver();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Match;", "", "resultRange", "Lkotlin/ranges/IntRange;", "resultIndices", "", "", "<init>", "(Lkotlin/ranges/IntRange;Ljava/util/List;)V", "getResultRange", "()Lkotlin/ranges/IntRange;", "getResultIndices", "()Ljava/util/List;", "room-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Match {
        @NotNull
        private final List<Integer> resultIndices;
        @NotNull
        private final IntRange resultRange;

        public Match(@NotNull IntRange intRange, @NotNull List<Integer> list) {
            this.resultRange = intRange;
            this.resultIndices = list;
        }

        @NotNull
        public final List<Integer> getResultIndices() {
            return this.resultIndices;
        }

        @NotNull
        public final IntRange getResultRange() {
            return this.resultRange;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$ResultColumn;", "", "name", "", FirebaseAnalytics.Param.INDEX, "", "<init>", "(Ljava/lang/String;I)V", "getName", "()Ljava/lang/String;", "getIndex", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "room-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ResultColumn {
        private final int index;
        @NotNull
        private final String name;

        public ResultColumn(@NotNull String str, int i) {
            this.name = str;
            this.index = i;
        }

        public static /* synthetic */ ResultColumn copy$default(ResultColumn resultColumn, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = resultColumn.name;
            }
            if ((i2 & 2) != 0) {
                i = resultColumn.index;
            }
            return resultColumn.copy(str, i);
        }

        @NotNull
        public final String component1() {
            return this.name;
        }

        public final int component2() {
            return this.index;
        }

        @NotNull
        public final ResultColumn copy(@NotNull String str, int i) {
            return new ResultColumn(str, i);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ResultColumn)) {
                return false;
            }
            ResultColumn resultColumn = (ResultColumn) obj;
            if (Intrinsics.areEqual(this.name, resultColumn.name) && this.index == resultColumn.index) {
                return true;
            }
            return false;
        }

        public final int getIndex() {
            return this.index;
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.index;
        }

        @NotNull
        public String toString() {
            return "ResultColumn(name=" + this.name + ", index=" + this.index + ')';
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0002\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B%\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0000H\u0096\u0002R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u0012"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Solution;", "", "matches", "", "Landroidx/room/AmbiguousColumnResolver$Match;", "coverageOffset", "", "overlaps", "<init>", "(Ljava/util/List;II)V", "getMatches", "()Ljava/util/List;", "getCoverageOffset", "()I", "getOverlaps", "compareTo", "other", "Companion", "room-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Solution implements Comparable<Solution> {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final Solution NO_SOLUTION = new Solution(CollectionsKt.emptyList(), Integer.MAX_VALUE, Integer.MAX_VALUE);
        private final int coverageOffset;
        @NotNull
        private final List<Match> matches;
        private final int overlaps;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\b\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Solution$Companion;", "", "<init>", "()V", "NO_SOLUTION", "Landroidx/room/AmbiguousColumnResolver$Solution;", "getNO_SOLUTION", "()Landroidx/room/AmbiguousColumnResolver$Solution;", "build", "matches", "", "Landroidx/room/AmbiguousColumnResolver$Match;", "room-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nAmbiguousColumnResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver$Solution$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,273:1\n1#2:274\n1782#3,3:275\n1863#3,2:278\n1785#3:280\n*S KotlinDebug\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver$Solution$Companion\n*L\n252#1:275,3\n254#1:278,2\n252#1:280\n*E\n"})
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Solution build(@NotNull List<Match> list) {
                List<Match> list2 = list;
                int i = 0;
                int i2 = 0;
                for (Match match : list2) {
                    i2 += ((match.getResultRange().getLast() - match.getResultRange().getFirst()) + 1) - match.getResultIndices().size();
                }
                Iterator<T> it = list2.iterator();
                if (it.hasNext()) {
                    int first = ((Match) it.next()).getResultRange().getFirst();
                    while (it.hasNext()) {
                        int first2 = ((Match) it.next()).getResultRange().getFirst();
                        if (first > first2) {
                            first = first2;
                        }
                    }
                    Iterator<T> it2 = list2.iterator();
                    if (it2.hasNext()) {
                        int last = ((Match) it2.next()).getResultRange().getLast();
                        while (it2.hasNext()) {
                            int last2 = ((Match) it2.next()).getResultRange().getLast();
                            if (last < last2) {
                                last = last2;
                            }
                        }
                        IntRange intRange = new IntRange(first, last);
                        if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                            Iterator<Integer> it3 = intRange.iterator();
                            int i3 = 0;
                            while (it3.hasNext()) {
                                int nextInt = ((IntIterator) it3).nextInt();
                                Iterator<T> it4 = list2.iterator();
                                int i4 = 0;
                                while (true) {
                                    if (!it4.hasNext()) {
                                        break;
                                    }
                                    if (((Match) it4.next()).getResultRange().contains(nextInt)) {
                                        i4++;
                                        continue;
                                    }
                                    if (i4 > 1) {
                                        i3++;
                                        if (i3 < 0) {
                                            CollectionsKt.throwCountOverflow();
                                        }
                                    }
                                }
                            }
                            i = i3;
                        }
                        return new Solution(list, i2, i);
                    }
                    throw new NoSuchElementException();
                }
                throw new NoSuchElementException();
            }

            @NotNull
            public final Solution getNO_SOLUTION() {
                return Solution.NO_SOLUTION;
            }

            private Companion() {
            }
        }

        public Solution(@NotNull List<Match> list, int i, int i2) {
            this.matches = list;
            this.coverageOffset = i;
            this.overlaps = i2;
        }

        public final int getCoverageOffset() {
            return this.coverageOffset;
        }

        @NotNull
        public final List<Match> getMatches() {
            return this.matches;
        }

        public final int getOverlaps() {
            return this.overlaps;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NotNull Solution solution) {
            int compare = Intrinsics.compare(this.overlaps, solution.overlaps);
            return compare != 0 ? compare : Intrinsics.compare(this.coverageOffset, solution.coverageOffset);
        }
    }

    private AmbiguousColumnResolver() {
    }

    private final <T> void dfs(List<? extends List<? extends T>> list, List<T> list2, int i, Function1<? super List<? extends T>, Unit> function1) {
        if (i == list.size()) {
            function1.invoke(CollectionsKt.toList(list2));
            return;
        }
        for (T t : list.get(i)) {
            list2.add(t);
            INSTANCE.dfs(list, list2, i + 1, function1);
            list2.remove(CollectionsKt.getLastIndex(list2));
        }
    }

    public static /* synthetic */ void dfs$default(AmbiguousColumnResolver ambiguousColumnResolver, List list, List list2, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            list2 = new ArrayList();
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        ambiguousColumnResolver.dfs(list, list2, i, function1);
    }

    private final void rabinKarpSearch(List<ResultColumn> list, String[] strArr, Function3<? super Integer, ? super Integer, ? super List<ResultColumn>, Unit> function3) {
        int i = 0;
        int i2 = 0;
        for (String str : strArr) {
            i2 += str.hashCode();
        }
        int length = strArr.length;
        int i3 = 0;
        for (ResultColumn resultColumn : list.subList(0, length)) {
            i3 += resultColumn.getName().hashCode();
        }
        while (true) {
            if (i2 == i3) {
                function3.invoke(Integer.valueOf(i), Integer.valueOf(length), list.subList(i, length));
            }
            int i4 = i + 1;
            int i5 = length + 1;
            if (i5 > list.size()) {
                return;
            }
            i3 = (i3 - list.get(i).getName().hashCode()) + list.get(length).getName().hashCode();
            i = i4;
            length = i5;
        }
    }

    @JvmStatic
    @NotNull
    public static final int[][] resolve(@NotNull List<String> list, @NotNull String[][] strArr) {
        return resolve((String[]) list.toArray(new String[0]), strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resolve$lambda$16$lambda$15(List list, int i, List list2) {
        List list3 = list2;
        Iterator it = list3.iterator();
        if (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            while (it.hasNext()) {
                int intValue2 = ((Number) it.next()).intValue();
                if (intValue > intValue2) {
                    intValue = intValue2;
                }
            }
            Iterator it2 = list3.iterator();
            if (it2.hasNext()) {
                int intValue3 = ((Number) it2.next()).intValue();
                while (it2.hasNext()) {
                    int intValue4 = ((Number) it2.next()).intValue();
                    if (intValue3 < intValue4) {
                        intValue3 = intValue4;
                    }
                }
                ((List) list.get(i)).add(new Match(new IntRange(intValue, intValue3), list2));
                return Unit.INSTANCE;
            }
            throw new NoSuchElementException();
        }
        throw new NoSuchElementException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resolve$lambda$16$lambda$7(String[] strArr, List list, int i, int i2, int i3, List list2) {
        Object obj;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            Iterator it = list2.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(str, ((ResultColumn) obj).component1())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            ResultColumn resultColumn = (ResultColumn) obj;
            if (resultColumn != null) {
                arrayList.add(Integer.valueOf(resultColumn.getIndex()));
            } else {
                return Unit.INSTANCE;
            }
        }
        ((List) list.get(i)).add(new Match(new IntRange(i2, i3 - 1), arrayList));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    public static final Unit resolve$lambda$19(Ref.ObjectRef objectRef, List list) {
        ?? build = Solution.Companion.build(list);
        if (build.compareTo((Solution) objectRef.element) < 0) {
            objectRef.element = build;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    @JvmStatic
    @NotNull
    public static final int[][] resolve(@NotNull String[] strArr, @NotNull String[][] strArr2) {
        int length = strArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            String str = strArr[i2];
            if (str.charAt(0) == '`' && str.charAt(str.length() - 1) == '`') {
                str = str.substring(1, str.length() - 1);
            }
            strArr[i2] = str.toLowerCase(Locale.ROOT);
        }
        int length2 = strArr2.length;
        for (int i3 = 0; i3 < length2; i3++) {
            int length3 = strArr2[i3].length;
            for (int i4 = 0; i4 < length3; i4++) {
                String[] strArr3 = strArr2[i3];
                strArr3[i4] = strArr3[i4].toLowerCase(Locale.ROOT);
            }
        }
        Set createSetBuilder = SetsKt.createSetBuilder();
        for (String[] strArr4 : strArr2) {
            CollectionsKt.addAll(createSetBuilder, strArr4);
        }
        Set build = SetsKt.build(createSetBuilder);
        List createListBuilder = CollectionsKt.createListBuilder();
        int length4 = strArr.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length4) {
            String str2 = strArr[i5];
            int i7 = i6 + 1;
            if (build.contains(str2)) {
                createListBuilder.add(new ResultColumn(str2, i6));
            }
            i5++;
            i6 = i7;
        }
        List<ResultColumn> build2 = CollectionsKt.build(createListBuilder);
        int length5 = strArr2.length;
        final ArrayList arrayList = new ArrayList(length5);
        for (int i8 = 0; i8 < length5; i8++) {
            arrayList.add(new ArrayList());
        }
        int length6 = strArr2.length;
        int i9 = 0;
        final int i10 = 0;
        while (i9 < length6) {
            final String[] strArr5 = strArr2[i9];
            int i11 = i10 + 1;
            INSTANCE.rabinKarpSearch(build2, strArr5, new Function3() { // from class: androidx.room.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit resolve$lambda$16$lambda$7;
                    resolve$lambda$16$lambda$7 = AmbiguousColumnResolver.resolve$lambda$16$lambda$7(strArr5, arrayList, i10, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (List) obj3);
                    return resolve$lambda$16$lambda$7;
                }
            });
            if (((List) arrayList.get(i10)).isEmpty()) {
                ArrayList arrayList2 = new ArrayList(strArr5.length);
                int length7 = strArr5.length;
                for (int i12 = i; i12 < length7; i12++) {
                    String str3 = strArr5[i12];
                    List createListBuilder2 = CollectionsKt.createListBuilder();
                    for (ResultColumn resultColumn : build2) {
                        if (Intrinsics.areEqual(str3, resultColumn.getName())) {
                            createListBuilder2.add(Integer.valueOf(resultColumn.getIndex()));
                        }
                    }
                    List build3 = CollectionsKt.build(createListBuilder2);
                    if (!build3.isEmpty()) {
                        arrayList2.add(build3);
                    } else {
                        throw new IllegalStateException(("Column " + str3 + " not found in result").toString());
                    }
                }
                dfs$default(INSTANCE, arrayList2, null, 0, new Function1() { // from class: androidx.room.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit resolve$lambda$16$lambda$15;
                        resolve$lambda$16$lambda$15 = AmbiguousColumnResolver.resolve$lambda$16$lambda$15(arrayList, i10, (List) obj);
                        return resolve$lambda$16$lambda$15;
                    }
                }, 6, null);
            }
            i9++;
            i10 = i11;
            i = 0;
        }
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i13 = 0;
            while (i13 < size) {
                Object obj = arrayList.get(i13);
                i13++;
                if (((List) obj).isEmpty()) {
                    throw new IllegalStateException("Failed to find matches for all mappings");
                }
            }
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = Solution.Companion.getNO_SOLUTION();
        dfs$default(INSTANCE, arrayList, null, 0, new Function1() { // from class: androidx.room.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                Unit resolve$lambda$19;
                resolve$lambda$19 = AmbiguousColumnResolver.resolve$lambda$19(Ref.ObjectRef.this, (List) obj2);
                return resolve$lambda$19;
            }
        }, 6, null);
        List<Match> matches = ((Solution) objectRef.element).getMatches();
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(matches, 10));
        for (Match match : matches) {
            arrayList3.add(CollectionsKt.toIntArray(match.getResultIndices()));
        }
        return (int[][]) arrayList3.toArray(new int[0]);
    }
}
