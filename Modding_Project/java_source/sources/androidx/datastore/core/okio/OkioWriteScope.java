package androidx.datastore.core.okio;

import androidx.datastore.core.WriteScope;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/datastore/core/okio/OkioWriteScope;", "T", "Landroidx/datastore/core/okio/OkioReadScope;", "Landroidx/datastore/core/WriteScope;", "fileSystem", "Lokio/FileSystem;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lokio/Path;", "serializer", "Landroidx/datastore/core/okio/OkioSerializer;", "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V", "writeData", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOkioStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioWriteScope\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,230:1\n66#2:231\n52#2,5:232\n66#2:237\n52#2,21:238\n60#2,10:259\n57#2,2:269\n71#2,2:271\n*S KotlinDebug\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioWriteScope\n*L\n214#1:231\n214#1:232,5\n215#1:237\n215#1:238,21\n214#1:259,10\n214#1:269,2\n214#1:271,2\n*E\n"})
/* loaded from: classes.dex */
public final class OkioWriteScope<T> extends OkioReadScope<T> implements WriteScope<T> {
    public OkioWriteScope(@NotNull FileSystem fileSystem, @NotNull Path path, @NotNull OkioSerializer<T> okioSerializer) {
        super(fileSystem, path, okioSerializer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0098 A[Catch: all -> 0x00a2, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x00a2, blocks: (B:44:0x0098, B:52:0x00a4, B:19:0x0054), top: B:69:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a4 A[Catch: all -> 0x00a2, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x00a2, blocks: (B:44:0x0098, B:52:0x00a4, B:19:0x0054), top: B:69:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v20, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.io.Closeable] */
    @Override // androidx.datastore.core.WriteScope
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object writeData(T r8, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.datastore.core.okio.OkioWriteScope$writeData$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.datastore.core.okio.OkioWriteScope$writeData$1 r0 = (androidx.datastore.core.okio.OkioWriteScope$writeData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.okio.OkioWriteScope$writeData$1 r0 = new androidx.datastore.core.okio.OkioWriteScope$writeData$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r8 = r0.L$2
            java.io.Closeable r8 = (java.io.Closeable) r8
            java.lang.Object r1 = r0.L$1
            okio.FileHandle r1 = (okio.FileHandle) r1
            java.lang.Object r0 = r0.L$0
            java.io.Closeable r0 = (java.io.Closeable) r0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L36
            goto L72
        L36:
            r9 = move-exception
            goto L86
        L38:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L40:
            kotlin.ResultKt.throwOnFailure(r9)
            r7.checkClose()
            okio.FileSystem r9 = r7.getFileSystem()
            okio.Path r2 = r7.getPath()
            okio.FileHandle r9 = r9.Wwwwwwwwwwwwwwwwwww(r2)
            r5 = 0
            okio.Sink r2 = okio.FileHandle.Kkkkkkkkkkkkk(r9, r5, r3, r4)     // Catch: java.lang.Throwable -> La2
            okio.BufferedSink r2 = okio.Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> La2
            androidx.datastore.core.okio.OkioSerializer r5 = r7.getSerializer()     // Catch: java.lang.Throwable -> L82
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L82
            r0.L$1 = r9     // Catch: java.lang.Throwable -> L82
            r0.L$2 = r2     // Catch: java.lang.Throwable -> L82
            r0.label = r3     // Catch: java.lang.Throwable -> L82
            java.lang.Object r8 = r5.writeTo(r8, r2, r0)     // Catch: java.lang.Throwable -> L82
            if (r8 != r1) goto L6f
            return r1
        L6f:
            r0 = r9
            r1 = r0
            r8 = r2
        L72:
            r1.flush()     // Catch: java.lang.Throwable -> L36
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L36
            if (r8 == 0) goto L7f
            r8.close()     // Catch: java.lang.Throwable -> L7d
            goto L7f
        L7d:
            r8 = move-exception
            goto L80
        L7f:
            r8 = r4
        L80:
            r9 = r0
            goto L96
        L82:
            r8 = move-exception
            r0 = r9
            r9 = r8
            r8 = r2
        L86:
            if (r8 == 0) goto L94
            r8.close()     // Catch: java.lang.Throwable -> L8c
            goto L94
        L8c:
            r8 = move-exception
            kotlin.ExceptionsKt.addSuppressed(r9, r8)     // Catch: java.lang.Throwable -> L91
            goto L94
        L91:
            r8 = move-exception
            r9 = r0
            goto La5
        L94:
            r8 = r9
            goto L80
        L96:
            if (r8 != 0) goto La4
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> La2
            if (r9 == 0) goto Lb0
            r9.close()     // Catch: java.lang.Throwable -> La0
            goto Lb0
        La0:
            r4 = move-exception
            goto Lb0
        La2:
            r8 = move-exception
            goto La5
        La4:
            throw r8     // Catch: java.lang.Throwable -> La2
        La5:
            if (r9 == 0) goto Laf
            r9.close()     // Catch: java.lang.Throwable -> Lab
            goto Laf
        Lab:
            r9 = move-exception
            kotlin.ExceptionsKt.addSuppressed(r8, r9)
        Laf:
            r4 = r8
        Lb0:
            if (r4 != 0) goto Lb5
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        Lb5:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.okio.OkioWriteScope.writeData(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
