package com.unity3d.services.core.network.domain;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J!\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0086\u0002¨\u0006\u000b"}, d2 = {"Lcom/unity3d/services/core/network/domain/CleanupDirectory;", "", "()V", "invoke", "", "directory", "Ljava/io/File;", "sizeLimitMb", "", "ageLimitMs", "", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCleanupDirectory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanupDirectory.kt\ncom/unity3d/services/core/network/domain/CleanupDirectory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1#2:40\n2689#3,10:41\n603#3:53\n179#3,2:54\n1855#4,2:51\n1855#4,2:56\n*S KotlinDebug\n*F\n+ 1 CleanupDirectory.kt\ncom/unity3d/services/core/network/domain/CleanupDirectory\n*L\n15#1:41,10\n28#1:53\n32#1:54,2\n21#1:51,2\n36#1:56,2\n*E\n"})
/* loaded from: classes6.dex */
public final class CleanupDirectory {
    public final void invoke(@NotNull File file, int i, long j) {
        List list;
        if (file.exists() && file.isDirectory()) {
            Object obj = null;
            Sequence<File> filter = SequencesKt.filter(FilesKt.walk$default(file, null, 1, null), CleanupDirectory$invoke$cachedFiles$1.INSTANCE);
            long j2 = 0;
            long j3 = 0;
            for (File file2 : filter) {
                j3 += file2.length();
            }
            long currentTimeMillis = System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : filter) {
                if (((File) obj2).lastModified() + j < currentTimeMillis) {
                    arrayList.add(obj2);
                } else {
                    arrayList2.add(obj2);
                }
            }
            Pair pair = new Pair(arrayList, arrayList2);
            List<File> list2 = (List) pair.component2();
            List<File> list3 = (List) pair.component1();
            for (File file3 : list3) {
                j2 += file3.length();
            }
            long j4 = j3 - j2;
            for (File file4 : list3) {
                file4.delete();
            }
            long j5 = i * 1048576;
            if (j4 > j5) {
                Iterator it = SequencesKt.runningFold(SequencesKt.sortedWith(CollectionsKt.asSequence(list2), new Comparator() { // from class: com.unity3d.services.core.network.domain.CleanupDirectory$invoke$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(Long.valueOf(((File) t).lastModified()), Long.valueOf(((File) t2).lastModified()));
                    }
                }), TuplesKt.to(Long.valueOf(j4), CollectionsKt.emptyList()), new Function2<Pair<? extends Long, ? extends List<? extends File>>, File, Pair<? extends Long, ? extends List<? extends File>>>() { // from class: com.unity3d.services.core.network.domain.CleanupDirectory$invoke$additionalFiles$2
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Pair<? extends Long, ? extends List<? extends File>> invoke(Pair<? extends Long, ? extends List<? extends File>> pair2, File file5) {
                        return invoke2((Pair<Long, ? extends List<? extends File>>) pair2, file5);
                    }

                    @NotNull
                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final Pair<Long, List<File>> invoke2(@NotNull Pair<Long, ? extends List<? extends File>> pair2, @NotNull File file5) {
                        return TuplesKt.to(Long.valueOf(pair2.component1().longValue() - file5.length()), CollectionsKt.plus((Collection<? extends File>) pair2.component2(), file5));
                    }
                }).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (((Number) ((Pair) next).component1()).longValue() <= j5) {
                        obj = next;
                        break;
                    }
                }
                Pair pair2 = (Pair) obj;
                if (pair2 != null && (list = (List) pair2.component2()) != null) {
                    list2 = list;
                }
                for (File file5 : list2) {
                    file5.delete();
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException(("Directory does not exist or is not a directory: " + file).toString());
    }
}
