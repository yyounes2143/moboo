package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Internal;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class ListFieldSchemaLite implements ListFieldSchema {
    public static <E> Internal.ProtobufList<E> getProtobufList(Object obj, long j) {
        return (Internal.ProtobufList) UnsafeUtil.getObject(obj, j);
    }

    @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
    public void makeImmutableListAt(Object obj, long j) {
        getProtobufList(obj, j).makeImmutable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
    public <E> void mergeListsAt(Object obj, Object obj2, long j) {
        Internal.ProtobufList<E> protobufList = getProtobufList(obj, j);
        Internal.ProtobufList<E> protobufList2 = getProtobufList(obj2, j);
        int size = protobufList.size();
        int size2 = protobufList2.size();
        Internal.ProtobufList<E> protobufList3 = protobufList;
        protobufList3 = protobufList;
        if (size > 0 && size2 > 0) {
            boolean isModifiable = protobufList.isModifiable();
            Internal.ProtobufList<E> protobufList4 = protobufList;
            if (!isModifiable) {
                protobufList4 = protobufList.mutableCopyWithCapacity(size2 + size);
            }
            protobufList4.addAll(protobufList2);
            protobufList3 = protobufList4;
        }
        if (size > 0) {
            protobufList2 = protobufList3;
        }
        UnsafeUtil.putObject(obj, j, protobufList2);
    }

    @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
    public <L> List<L> mutableListAt(Object obj, long j) {
        int i;
        Internal.ProtobufList protobufList = getProtobufList(obj, j);
        if (!protobufList.isModifiable()) {
            int size = protobufList.size();
            if (size == 0) {
                i = 10;
            } else {
                i = size * 2;
            }
            Internal.ProtobufList mutableCopyWithCapacity = protobufList.mutableCopyWithCapacity(i);
            UnsafeUtil.putObject(obj, j, mutableCopyWithCapacity);
            return mutableCopyWithCapacity;
        }
        return protobufList;
    }
}
