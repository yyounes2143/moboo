.class public final Lcom/changdu/component/cpuopt/CDCpuOptimize;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\t\u0010\r\u001a\u00020\u0008H\u0082 J\t\u0010\u000e\u001a\u00020\u0006H\u0086 J\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\t\u0010\u0011\u001a\u00020\u0008H\u0086 J\t\u0010\u0012\u001a\u00020\u0006H\u0086 J\t\u0010\u0013\u001a\u00020\u0006H\u0086 J\u0008\u0010\u0014\u001a\u00020\u0006H\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0007J\u0008\u0010\u0018\u001a\u00020\u0016H\u0007J\u0006\u0010\u0019\u001a\u00020\u0016J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/changdu/component/cpuopt/CDCpuOptimize;",
        "",
        "()V",
        "TAG",
        "",
        "bindCurrentThreadToCpuCores",
        "",
        "coreIndices",
        "",
        "boostCpu",
        "",
        "context",
        "Landroid/content/Context;",
        "getAllCpuCoresMaxFreq",
        "getCpuCores",
        "getCpuModel",
        "Lcom/changdu/component/cpuopt/CpuModel;",
        "getCurrentThreadCpuAffinity",
        "getCurrentThreadCpuCore",
        "getRenderThreadId",
        "getRenderThreadTid",
        "optimizeCpuCores",
        "",
        "optimizeMainPriority",
        "optimizeRenderPriority",
        "resetCpuCores",
        "threadToCore",
        "core",
        "cpu_optimize_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCDCpuOptimize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDCpuOptimize.kt\ncom/changdu/component/cpuopt/CDCpuOptimize\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,216:1\n731#2,9:217\n1054#2:237\n1549#2:238\n1620#2,3:239\n37#3,2:226\n13330#4,2:228\n12313#4,2:230\n11185#4:232\n11305#4,4:233\n*S KotlinDebug\n*F\n+ 1 CDCpuOptimize.kt\ncom/changdu/component/cpuopt/CDCpuOptimize\n*L\n70#1:217,9\n174#1:237\n179#1:238\n179#1:239,3\n71#1:226,2\n140#1:228,2\n165#1:230,2\n171#1:232\n171#1:233,4\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/component/cpuopt/CDCpuOptimize;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CDCpuOpt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/cpuopt/CDCpuOptimize;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/cpuopt/CDCpuOptimize;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/cpuopt/CDCpuOptimize;->INSTANCE:Lcom/changdu/component/cpuopt/CDCpuOptimize;

    .line 7
    .line 8
    :try_start_0
    const-string v0, "cdcpuopt"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final native bindCurrentThreadToCpuCores([I)I
.end method

.method private final native getAllCpuCoresMaxFreq()[I
.end method

.method private final getRenderThreadTid()I
    .locals 11

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, "/proc/"

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "/task/"

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_7

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_7

    .line 44
    .line 45
    array-length v2, v1

    .line 46
    const/4 v3, 0x0

    .line 47
    move v4, v3

    .line 48
    :goto_0
    if-ge v4, v2, :cond_7

    .line 49
    .line 50
    aget-object v5, v1, v4

    .line 51
    .line 52
    const-string v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    .line 56
    .line 57
    new-instance v9, Ljava/io/FileReader;

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v5, "/stat"

    .line 72
    .line 73
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 v5, 0x64

    .line 84
    .line 85
    invoke-direct {v8, v9, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 86
    .line 87
    .line 88
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :catchall_1
    move-object v7, v8

    .line 100
    :catchall_2
    if-eqz v7, :cond_0

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 103
    .line 104
    .line 105
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_1

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_1
    new-instance v5, Lkotlin/text/Regex;

    .line 113
    .line 114
    const-string v7, " "

    .line 115
    .line 116
    invoke-direct {v5, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v6, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    const/4 v7, 0x1

    .line 128
    if-nez v6, :cond_3

    .line 129
    .line 130
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    :goto_2
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_3

    .line 143
    .line 144
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    check-cast v8, Ljava/lang/String;

    .line 149
    .line 150
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-nez v8, :cond_2

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_2
    check-cast v5, Ljava/lang/Iterable;

    .line 158
    .line 159
    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    add-int/2addr v6, v7

    .line 164
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    goto :goto_3

    .line 169
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    :goto_3
    check-cast v5, Ljava/util/Collection;

    .line 174
    .line 175
    new-array v6, v3, [Ljava/lang/String;

    .line 176
    .line 177
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, [Ljava/lang/String;

    .line 182
    .line 183
    array-length v6, v5

    .line 184
    const/4 v8, 0x2

    .line 185
    if-ge v6, v8, :cond_4

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_4
    aget-object v6, v5, v7

    .line 189
    .line 190
    const-string v7, "(RenderThread)"

    .line 191
    .line 192
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_6

    .line 197
    .line 198
    aget-object v1, v5, v3

    .line 199
    .line 200
    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-eqz v1, :cond_5

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    :cond_5
    return v0

    .line 211
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    .line 217
    .line 218
    :cond_7
    return v0
.end method

.method public static final optimizeMainPriority()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/16 v0, -0x13

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public static final optimizeRenderPriority()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/component/cpuopt/CDCpuOptimize;->INSTANCE:Lcom/changdu/component/cpuopt/CDCpuOptimize;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->getRenderThreadTid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v1, -0x13

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final boostCpu(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/component/cpuopt/CpuBoostManager;->INSTANCE:Lcom/changdu/component/cpuopt/CpuBoostManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/changdu/component/cpuopt/CpuBoostManager;->init(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1388

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, p1, v2, v1, v2}, Lcom/changdu/component/cpuopt/CpuBoostManager;->boostCpu$default(Lcom/changdu/component/cpuopt/CpuBoostManager;ILjava/lang/String;ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final native getCpuCores()I
.end method

.method public final getCpuModel()Lcom/changdu/component/cpuopt/CpuModel;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->getCpuCores()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->getCurrentThreadCpuCore()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->getCurrentThreadCpuAffinity()[I

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    array-length v4, v3

    .line 19
    const/4 v5, 0x0

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v4, v5

    .line 25
    :goto_0
    if-nez v4, :cond_1

    .line 26
    .line 27
    array-length v4, v3

    .line 28
    :goto_1
    if-ge v5, v4, :cond_1

    .line 29
    .line 30
    aget v6, v3, v5

    .line 31
    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->getAllCpuCoresMaxFreq()[I

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v4, Lcom/changdu/component/cpuopt/CpuModel;

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v4, v0, v2, v1, v3}, Lcom/changdu/component/cpuopt/CpuModel;-><init>(I[II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    return-object v4

    .line 58
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    return-object v0
.end method

.method public final native getCurrentThreadCpuAffinity()[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native getCurrentThreadCpuCore()I
.end method

.method public final native getRenderThreadId()I
.end method

.method public final optimizeCpuCores()V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->getCpuModel()Lcom/changdu/component/cpuopt/CpuModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/changdu/component/cpuopt/CpuModel;->getCpuFreq()[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    array-length v1, v1

    .line 14
    invoke-virtual {v0}, Lcom/changdu/component/cpuopt/CpuModel;->getCpuCount()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x4

    .line 19
    if-le v2, v3, :cond_7

    .line 20
    .line 21
    if-eqz v1, :cond_7

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/changdu/component/cpuopt/CpuModel;->getCpuCount()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eq v2, v1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/changdu/component/cpuopt/CpuModel;->getCpuFreq()[I

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    aget v1, v1, v2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/changdu/component/cpuopt/CpuModel;->getCpuFreq()[I

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    array-length v4, v3

    .line 43
    move v5, v2

    .line 44
    :goto_0
    if-ge v5, v4, :cond_6

    .line 45
    .line 46
    aget v6, v3, v5

    .line 47
    .line 48
    if-ne v6, v1, :cond_2

    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/changdu/component/cpuopt/CpuModel;->getCpuFreq()[I

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    array-length v3, v0

    .line 60
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    array-length v3, v0

    .line 64
    move v4, v2

    .line 65
    move v5, v4

    .line 66
    :goto_1
    if-ge v4, v3, :cond_3

    .line 67
    .line 68
    aget v6, v0, v4

    .line 69
    .line 70
    add-int/lit8 v7, v5, 0x1

    .line 71
    .line 72
    new-instance v8, Lkotlin/Pair;

    .line 73
    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-direct {v8, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    move v5, v7

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    new-instance v0, Lcom/changdu/component/cpuopt/CDCpuOptimize$optimizeCpuCores$$inlined$sortedByDescending$1;

    .line 95
    .line 96
    invoke-direct {v0}, Lcom/changdu/component/cpuopt/CDCpuOptimize$optimizeCpuCores$$inlined$sortedByDescending$1;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    div-int/lit8 v1, v1, 0x2

    .line 111
    .line 112
    check-cast v0, Ljava/lang/Iterable;

    .line 113
    .line 114
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/Iterable;

    .line 119
    .line 120
    new-instance v1, Ljava/util/ArrayList;

    .line 121
    .line 122
    const/16 v3, 0xa

    .line 123
    .line 124
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_4

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Lkotlin/Pair;

    .line 146
    .line 147
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Ljava/lang/Number;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    array-length v1, v0

    .line 170
    if-nez v1, :cond_5

    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    :cond_5
    if-nez v2, :cond_7

    .line 174
    .line 175
    invoke-direct {p0, v0}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->bindCurrentThreadToCpuCores([I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    .line 178
    :cond_6
    return-void

    .line 179
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_4
    return-void
.end method

.method public final resetCpuCores()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->getCpuCores()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    new-array v1, v0, [I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    aput v2, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-direct {p0, v1}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->bindCurrentThreadToCpuCores([I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public final threadToCore(I)V
    .locals 0

    .line 1
    :try_start_0
    filled-new-array {p1}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/changdu/component/cpuopt/CDCpuOptimize;->bindCurrentThreadToCpuCores([I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
