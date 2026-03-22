.class public final Landroidx/work/impl/model/RawWorkInfoDao_Impl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroidx/work/impl/model/RawWorkInfoDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/RawWorkInfoDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u000c2\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u000e2\u0006\u0010\t\u001a\u00020\nH\u0016J*\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00160\u0014H\u0002J*\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00160\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/work/impl/model/RawWorkInfoDao_Impl;",
        "Landroidx/work/impl/model/RawWorkInfoDao;",
        "__db",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "(Landroidx/room/RoomDatabase;)V",
        "getWorkInfoPojos",
        "",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        "query",
        "Landroidx/sqlite/db/SupportSQLiteQuery;",
        "getWorkInfoPojosLiveData",
        "Landroidx/lifecycle/LiveData;",
        "getWorkInfoPojosFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "__fetchRelationshipWorkTagAsjavaLangString",
        "",
        "_connection",
        "Landroidx/sqlite/SQLiteConnection;",
        "_map",
        "Landroidx/collection/ArrayMap;",
        "",
        "",
        "__fetchRelationshipWorkProgressAsandroidxWorkData",
        "Landroidx/work/Data;",
        "Companion",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/work/impl/model/RawWorkInfoDao_Impl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->Companion:Landroidx/work/impl/model/RawWorkInfoDao_Impl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->getWorkInfoPojos$lambda$0(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->getWorkInfoPojosLiveData$lambda$1(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->getWorkInfoPojosFlow$lambda$2(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString$lambda$3(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final __fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/work/Data;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x3e7

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-le v1, v2, :cond_1

    .line 20
    .line 21
    new-instance v0, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v3, v0}, Landroidx/room/util/RelationUtil;->recursiveFetchArrayMap(Landroidx/collection/ArrayMap;ZLkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 45
    .line 46
    .line 47
    const-string v2, ")"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move v1, v3

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {p1, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    add-int/2addr v1, v3

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    :try_start_0
    const-string v0, "work_spec_id"

    .line 83
    .line 84
    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/4 v1, -0x1

    .line 89
    if-ne v0, v1, :cond_3

    .line 90
    .line 91
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/util/List;

    .line 110
    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    sget-object v3, Landroidx/work/Data;->Companion:Landroidx/work/Data$Companion;

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p2

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :goto_2
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 135
    .line 136
    .line 137
    throw p2
.end method

.method private static final __fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final __fetchRelationshipWorkTagAsjavaLangString(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x3e7

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-le v1, v2, :cond_1

    .line 20
    .line 21
    new-instance v0, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwww;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwww;-><init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v3, v0}, Landroidx/room/util/RelationUtil;->recursiveFetchArrayMap(Landroidx/collection/ArrayMap;ZLkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 45
    .line 46
    .line 47
    const-string v2, ")"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move v1, v3

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {p1, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    add-int/2addr v1, v3

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    :try_start_0
    const-string v0, "work_spec_id"

    .line 83
    .line 84
    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/4 v1, -0x1

    .line 89
    if-ne v0, v1, :cond_3

    .line 90
    .line 91
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/util/List;

    .line 110
    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catchall_0
    move-exception p2

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_2
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 129
    .line 130
    .line 131
    throw p2
.end method

.method private static final __fetchRelationshipWorkTagAsjavaLangString$lambda$3(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final getWorkInfoPojos$lambda$0(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 62

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface {v2, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/room/RoomRawQuery;->getBindingFunction()Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v3, "id"

    .line 19
    .line 20
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string v4, "state"

    .line 25
    .line 26
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const-string v5, "output"

    .line 31
    .line 32
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const-string v6, "initial_delay"

    .line 37
    .line 38
    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const-string v7, "interval_duration"

    .line 43
    .line 44
    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const-string v8, "flex_duration"

    .line 49
    .line 50
    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    const-string v9, "run_attempt_count"

    .line 55
    .line 56
    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    const-string v10, "backoff_policy"

    .line 61
    .line 62
    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    const-string v11, "backoff_delay_duration"

    .line 67
    .line 68
    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    const-string v12, "last_enqueue_time"

    .line 73
    .line 74
    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    const-string v13, "period_count"

    .line 79
    .line 80
    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    const-string v14, "generation"

    .line 85
    .line 86
    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    const-string v15, "next_schedule_time_override"

    .line 91
    .line 92
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    move/from16 p0, v15

    .line 97
    .line 98
    const-string v15, "stop_reason"

    .line 99
    .line 100
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    move/from16 p1, v15

    .line 105
    .line 106
    const-string v15, "required_network_type"

    .line 107
    .line 108
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    move/from16 v16, v15

    .line 113
    .line 114
    const-string v15, "required_network_request"

    .line 115
    .line 116
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    move/from16 v17, v15

    .line 121
    .line 122
    const-string v15, "requires_charging"

    .line 123
    .line 124
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    move/from16 v18, v15

    .line 129
    .line 130
    const-string v15, "requires_device_idle"

    .line 131
    .line 132
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    move/from16 v19, v15

    .line 137
    .line 138
    const-string v15, "requires_battery_not_low"

    .line 139
    .line 140
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    move/from16 v20, v15

    .line 145
    .line 146
    const-string v15, "requires_storage_not_low"

    .line 147
    .line 148
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    move/from16 v21, v15

    .line 153
    .line 154
    const-string v15, "trigger_content_update_delay"

    .line 155
    .line 156
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    move/from16 v22, v15

    .line 161
    .line 162
    const-string v15, "trigger_max_content_delay"

    .line 163
    .line 164
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    move/from16 v23, v15

    .line 169
    .line 170
    const-string v15, "content_uri_triggers"

    .line 171
    .line 172
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v15

    .line 176
    move/from16 v24, v15

    .line 177
    .line 178
    new-instance v15, Landroidx/collection/ArrayMap;

    .line 179
    .line 180
    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    .line 181
    .line 182
    .line 183
    move/from16 v25, v14

    .line 184
    .line 185
    new-instance v14, Landroidx/collection/ArrayMap;

    .line 186
    .line 187
    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    .line 188
    .line 189
    .line 190
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 191
    .line 192
    .line 193
    move-result v26

    .line 194
    if-eqz v26, :cond_2

    .line 195
    .line 196
    move/from16 v26, v13

    .line 197
    .line 198
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    invoke-virtual {v15, v13}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v27

    .line 206
    if-nez v27, :cond_0

    .line 207
    .line 208
    move/from16 v27, v12

    .line 209
    .line 210
    new-instance v12, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v15, v13, v12}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    goto/16 :goto_21

    .line 221
    .line 222
    :cond_0
    move/from16 v27, v12

    .line 223
    .line 224
    :goto_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    invoke-virtual {v14, v12}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    if-nez v13, :cond_1

    .line 233
    .line 234
    new-instance v13, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v14, v12, v13}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    :cond_1
    move/from16 v13, v26

    .line 243
    .line 244
    move/from16 v12, v27

    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_2
    move/from16 v27, v12

    .line 248
    .line 249
    move/from16 v26, v13

    .line 250
    .line 251
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v2, v15}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v0, v2, v14}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    :goto_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_1e

    .line 270
    .line 271
    const/4 v2, -0x1

    .line 272
    if-eq v3, v2, :cond_1d

    .line 273
    .line 274
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v29

    .line 278
    if-eq v4, v2, :cond_1c

    .line 279
    .line 280
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v12

    .line 284
    long-to-int v12, v12

    .line 285
    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 286
    .line 287
    .line 288
    move-result-object v30

    .line 289
    if-eq v5, v2, :cond_1b

    .line 290
    .line 291
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    sget-object v13, Landroidx/work/Data;->Companion:Landroidx/work/Data$Companion;

    .line 296
    .line 297
    invoke-virtual {v13, v12}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 298
    .line 299
    .line 300
    move-result-object v31

    .line 301
    if-ne v6, v2, :cond_3

    .line 302
    .line 303
    const-wide/16 v32, 0x0

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 307
    .line 308
    .line 309
    move-result-wide v32

    .line 310
    :goto_3
    if-ne v7, v2, :cond_4

    .line 311
    .line 312
    const-wide/16 v34, 0x0

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 316
    .line 317
    .line 318
    move-result-wide v34

    .line 319
    :goto_4
    if-ne v8, v2, :cond_5

    .line 320
    .line 321
    const-wide/16 v36, 0x0

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_5
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v36

    .line 328
    :goto_5
    const/16 v28, 0x0

    .line 329
    .line 330
    if-ne v9, v2, :cond_6

    .line 331
    .line 332
    move/from16 v39, v28

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_6
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 336
    .line 337
    .line 338
    move-result-wide v12

    .line 339
    long-to-int v12, v12

    .line 340
    move/from16 v39, v12

    .line 341
    .line 342
    :goto_6
    if-eq v10, v2, :cond_1a

    .line 343
    .line 344
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v12

    .line 348
    long-to-int v12, v12

    .line 349
    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 350
    .line 351
    .line 352
    move-result-object v40

    .line 353
    if-ne v11, v2, :cond_7

    .line 354
    .line 355
    const-wide/16 v41, 0x0

    .line 356
    .line 357
    :goto_7
    move/from16 v12, v27

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_7
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v12

    .line 364
    move-wide/from16 v41, v12

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :goto_8
    if-ne v12, v2, :cond_8

    .line 368
    .line 369
    const-wide/16 v43, 0x0

    .line 370
    .line 371
    :goto_9
    move/from16 v13, v26

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_8
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 375
    .line 376
    .line 377
    move-result-wide v43

    .line 378
    goto :goto_9

    .line 379
    :goto_a
    if-ne v13, v2, :cond_9

    .line 380
    .line 381
    move/from16 v26, v3

    .line 382
    .line 383
    move/from16 v45, v28

    .line 384
    .line 385
    move v3, v2

    .line 386
    :goto_b
    move/from16 v2, v25

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_9
    move/from16 v26, v3

    .line 390
    .line 391
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 392
    .line 393
    .line 394
    move-result-wide v2

    .line 395
    long-to-int v2, v2

    .line 396
    move/from16 v45, v2

    .line 397
    .line 398
    const/4 v3, -0x1

    .line 399
    goto :goto_b

    .line 400
    :goto_c
    if-ne v2, v3, :cond_a

    .line 401
    .line 402
    move/from16 v25, v4

    .line 403
    .line 404
    move/from16 v46, v28

    .line 405
    .line 406
    move v4, v3

    .line 407
    :goto_d
    move/from16 v3, p0

    .line 408
    .line 409
    goto :goto_e

    .line 410
    :cond_a
    move/from16 v25, v4

    .line 411
    .line 412
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 413
    .line 414
    .line 415
    move-result-wide v3

    .line 416
    long-to-int v3, v3

    .line 417
    move/from16 v46, v3

    .line 418
    .line 419
    const/4 v4, -0x1

    .line 420
    goto :goto_d

    .line 421
    :goto_e
    if-ne v3, v4, :cond_b

    .line 422
    .line 423
    const-wide/16 v47, 0x0

    .line 424
    .line 425
    :goto_f
    move/from16 v27, v2

    .line 426
    .line 427
    move/from16 v2, p1

    .line 428
    .line 429
    goto :goto_10

    .line 430
    :cond_b
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v47

    .line 434
    goto :goto_f

    .line 435
    :goto_10
    if-ne v2, v4, :cond_c

    .line 436
    .line 437
    move/from16 p0, v5

    .line 438
    .line 439
    move/from16 v49, v28

    .line 440
    .line 441
    move v5, v4

    .line 442
    :goto_11
    move/from16 v4, v16

    .line 443
    .line 444
    goto :goto_12

    .line 445
    :cond_c
    move/from16 p0, v5

    .line 446
    .line 447
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 448
    .line 449
    .line 450
    move-result-wide v4

    .line 451
    long-to-int v4, v4

    .line 452
    move/from16 v49, v4

    .line 453
    .line 454
    const/4 v5, -0x1

    .line 455
    goto :goto_11

    .line 456
    :goto_12
    if-eq v4, v5, :cond_19

    .line 457
    .line 458
    move/from16 p1, v6

    .line 459
    .line 460
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 461
    .line 462
    .line 463
    move-result-wide v5

    .line 464
    long-to-int v5, v5

    .line 465
    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 466
    .line 467
    .line 468
    move-result-object v52

    .line 469
    move/from16 v5, v17

    .line 470
    .line 471
    const/4 v6, -0x1

    .line 472
    if-eq v5, v6, :cond_18

    .line 473
    .line 474
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 475
    .line 476
    .line 477
    move-result-object v16

    .line 478
    invoke-static/range {v16 .. v16}, Landroidx/work/impl/model/WorkTypeConverters;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 479
    .line 480
    .line 481
    move-result-object v51

    .line 482
    const/16 v16, 0x1

    .line 483
    .line 484
    move/from16 v17, v2

    .line 485
    .line 486
    move/from16 v2, v18

    .line 487
    .line 488
    if-ne v2, v6, :cond_d

    .line 489
    .line 490
    move/from16 v18, v7

    .line 491
    .line 492
    move/from16 v53, v28

    .line 493
    .line 494
    move v7, v6

    .line 495
    :goto_13
    move/from16 v6, v19

    .line 496
    .line 497
    goto :goto_15

    .line 498
    :cond_d
    move/from16 v18, v7

    .line 499
    .line 500
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 501
    .line 502
    .line 503
    move-result-wide v6

    .line 504
    long-to-int v6, v6

    .line 505
    if-eqz v6, :cond_e

    .line 506
    .line 507
    move/from16 v6, v16

    .line 508
    .line 509
    goto :goto_14

    .line 510
    :cond_e
    move/from16 v6, v28

    .line 511
    .line 512
    :goto_14
    move/from16 v53, v6

    .line 513
    .line 514
    const/4 v7, -0x1

    .line 515
    goto :goto_13

    .line 516
    :goto_15
    if-ne v6, v7, :cond_f

    .line 517
    .line 518
    move/from16 v19, v8

    .line 519
    .line 520
    move/from16 v54, v28

    .line 521
    .line 522
    move v8, v7

    .line 523
    :goto_16
    move/from16 v7, v20

    .line 524
    .line 525
    goto :goto_18

    .line 526
    :cond_f
    move/from16 v19, v8

    .line 527
    .line 528
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 529
    .line 530
    .line 531
    move-result-wide v7

    .line 532
    long-to-int v7, v7

    .line 533
    if-eqz v7, :cond_10

    .line 534
    .line 535
    move/from16 v7, v16

    .line 536
    .line 537
    goto :goto_17

    .line 538
    :cond_10
    move/from16 v7, v28

    .line 539
    .line 540
    :goto_17
    move/from16 v54, v7

    .line 541
    .line 542
    const/4 v8, -0x1

    .line 543
    goto :goto_16

    .line 544
    :goto_18
    if-ne v7, v8, :cond_11

    .line 545
    .line 546
    move/from16 v20, v9

    .line 547
    .line 548
    move/from16 v55, v28

    .line 549
    .line 550
    move v9, v8

    .line 551
    :goto_19
    move/from16 v8, v21

    .line 552
    .line 553
    goto :goto_1b

    .line 554
    :cond_11
    move/from16 v20, v9

    .line 555
    .line 556
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 557
    .line 558
    .line 559
    move-result-wide v8

    .line 560
    long-to-int v8, v8

    .line 561
    if-eqz v8, :cond_12

    .line 562
    .line 563
    move/from16 v8, v16

    .line 564
    .line 565
    goto :goto_1a

    .line 566
    :cond_12
    move/from16 v8, v28

    .line 567
    .line 568
    :goto_1a
    move/from16 v55, v8

    .line 569
    .line 570
    const/4 v9, -0x1

    .line 571
    goto :goto_19

    .line 572
    :goto_1b
    if-ne v8, v9, :cond_13

    .line 573
    .line 574
    move/from16 v21, v10

    .line 575
    .line 576
    move v10, v9

    .line 577
    move/from16 v56, v28

    .line 578
    .line 579
    move/from16 v9, v22

    .line 580
    .line 581
    goto :goto_1c

    .line 582
    :cond_13
    move/from16 v21, v10

    .line 583
    .line 584
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 585
    .line 586
    .line 587
    move-result-wide v9

    .line 588
    long-to-int v9, v9

    .line 589
    if-eqz v9, :cond_14

    .line 590
    .line 591
    move/from16 v28, v16

    .line 592
    .line 593
    :cond_14
    const/4 v10, -0x1

    .line 594
    move/from16 v9, v22

    .line 595
    .line 596
    move/from16 v56, v28

    .line 597
    .line 598
    :goto_1c
    if-ne v9, v10, :cond_15

    .line 599
    .line 600
    const-wide/16 v57, 0x0

    .line 601
    .line 602
    :goto_1d
    move/from16 v16, v2

    .line 603
    .line 604
    move/from16 v2, v23

    .line 605
    .line 606
    goto :goto_1e

    .line 607
    :cond_15
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 608
    .line 609
    .line 610
    move-result-wide v57

    .line 611
    goto :goto_1d

    .line 612
    :goto_1e
    if-ne v2, v10, :cond_16

    .line 613
    .line 614
    const-wide/16 v59, 0x0

    .line 615
    .line 616
    :goto_1f
    move/from16 v23, v2

    .line 617
    .line 618
    move/from16 v2, v24

    .line 619
    .line 620
    goto :goto_20

    .line 621
    :cond_16
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 622
    .line 623
    .line 624
    move-result-wide v22

    .line 625
    move-wide/from16 v59, v22

    .line 626
    .line 627
    goto :goto_1f

    .line 628
    :goto_20
    if-eq v2, v10, :cond_17

    .line 629
    .line 630
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 631
    .line 632
    .line 633
    move-result-object v10

    .line 634
    invoke-static {v10}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 635
    .line 636
    .line 637
    move-result-object v61

    .line 638
    new-instance v50, Landroidx/work/Constraints;

    .line 639
    .line 640
    invoke-direct/range {v50 .. v61}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 641
    .line 642
    .line 643
    move/from16 v24, v2

    .line 644
    .line 645
    move/from16 v10, v26

    .line 646
    .line 647
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    invoke-static {v15, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    check-cast v2, Ljava/util/List;

    .line 656
    .line 657
    move-object/from16 p2, v2

    .line 658
    .line 659
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    invoke-static {v14, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    move-object/from16 v51, v2

    .line 668
    .line 669
    check-cast v51, Ljava/util/List;

    .line 670
    .line 671
    new-instance v28, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 672
    .line 673
    move-object/from16 v38, v50

    .line 674
    .line 675
    move-object/from16 v50, p2

    .line 676
    .line 677
    invoke-direct/range {v28 .. v51}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    .line 678
    .line 679
    .line 680
    move-object/from16 v2, v28

    .line 681
    .line 682
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move/from16 v22, v5

    .line 686
    .line 687
    move/from16 v5, p0

    .line 688
    .line 689
    move/from16 p0, v3

    .line 690
    .line 691
    move v3, v10

    .line 692
    move/from16 v10, v21

    .line 693
    .line 694
    move/from16 v21, v8

    .line 695
    .line 696
    move/from16 v8, v19

    .line 697
    .line 698
    move/from16 v19, v6

    .line 699
    .line 700
    move/from16 v6, p1

    .line 701
    .line 702
    move/from16 p1, v17

    .line 703
    .line 704
    move/from16 v17, v22

    .line 705
    .line 706
    move/from16 v22, v9

    .line 707
    .line 708
    move/from16 v26, v13

    .line 709
    .line 710
    move/from16 v9, v20

    .line 711
    .line 712
    move/from16 v20, v7

    .line 713
    .line 714
    move/from16 v7, v18

    .line 715
    .line 716
    move/from16 v18, v16

    .line 717
    .line 718
    move/from16 v16, v4

    .line 719
    .line 720
    move/from16 v4, v25

    .line 721
    .line 722
    move/from16 v25, v27

    .line 723
    .line 724
    move/from16 v27, v12

    .line 725
    .line 726
    goto/16 :goto_2

    .line 727
    .line 728
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 729
    .line 730
    const-string v2, "Missing value for a NON-NULL column \'content_uri_triggers\', found NULL value instead."

    .line 731
    .line 732
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    throw v0

    .line 736
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 737
    .line 738
    const-string v2, "Missing value for a NON-NULL column \'required_network_request\', found NULL value instead."

    .line 739
    .line 740
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    throw v0

    .line 744
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 745
    .line 746
    const-string v2, "Missing value for a NON-NULL column \'required_network_type\', found NULL value instead."

    .line 747
    .line 748
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    throw v0

    .line 752
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 753
    .line 754
    const-string v2, "Missing value for a NON-NULL column \'backoff_policy\', found NULL value instead."

    .line 755
    .line 756
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    throw v0

    .line 760
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 761
    .line 762
    const-string v2, "Missing value for a NON-NULL column \'output\', found NULL value instead."

    .line 763
    .line 764
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    throw v0

    .line 768
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 769
    .line 770
    const-string v2, "Missing value for a NON-NULL column \'state\', found NULL value instead."

    .line 771
    .line 772
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    throw v0

    .line 776
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 777
    .line 778
    const-string v2, "Missing value for a NON-NULL column \'id\', found NULL value instead."

    .line 779
    .line 780
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :cond_1e
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 785
    .line 786
    .line 787
    return-object v0

    .line 788
    :goto_21
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 789
    .line 790
    .line 791
    throw v0
.end method

.method private static final getWorkInfoPojosFlow$lambda$2(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 62

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface {v2, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/room/RoomRawQuery;->getBindingFunction()Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v3, "id"

    .line 19
    .line 20
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string v4, "state"

    .line 25
    .line 26
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const-string v5, "output"

    .line 31
    .line 32
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const-string v6, "initial_delay"

    .line 37
    .line 38
    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const-string v7, "interval_duration"

    .line 43
    .line 44
    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const-string v8, "flex_duration"

    .line 49
    .line 50
    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    const-string v9, "run_attempt_count"

    .line 55
    .line 56
    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    const-string v10, "backoff_policy"

    .line 61
    .line 62
    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    const-string v11, "backoff_delay_duration"

    .line 67
    .line 68
    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    const-string v12, "last_enqueue_time"

    .line 73
    .line 74
    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    const-string v13, "period_count"

    .line 79
    .line 80
    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    const-string v14, "generation"

    .line 85
    .line 86
    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    const-string v15, "next_schedule_time_override"

    .line 91
    .line 92
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    move/from16 p0, v15

    .line 97
    .line 98
    const-string v15, "stop_reason"

    .line 99
    .line 100
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    move/from16 p1, v15

    .line 105
    .line 106
    const-string v15, "required_network_type"

    .line 107
    .line 108
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    move/from16 v16, v15

    .line 113
    .line 114
    const-string v15, "required_network_request"

    .line 115
    .line 116
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    move/from16 v17, v15

    .line 121
    .line 122
    const-string v15, "requires_charging"

    .line 123
    .line 124
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    move/from16 v18, v15

    .line 129
    .line 130
    const-string v15, "requires_device_idle"

    .line 131
    .line 132
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    move/from16 v19, v15

    .line 137
    .line 138
    const-string v15, "requires_battery_not_low"

    .line 139
    .line 140
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    move/from16 v20, v15

    .line 145
    .line 146
    const-string v15, "requires_storage_not_low"

    .line 147
    .line 148
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    move/from16 v21, v15

    .line 153
    .line 154
    const-string v15, "trigger_content_update_delay"

    .line 155
    .line 156
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    move/from16 v22, v15

    .line 161
    .line 162
    const-string v15, "trigger_max_content_delay"

    .line 163
    .line 164
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    move/from16 v23, v15

    .line 169
    .line 170
    const-string v15, "content_uri_triggers"

    .line 171
    .line 172
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v15

    .line 176
    move/from16 v24, v15

    .line 177
    .line 178
    new-instance v15, Landroidx/collection/ArrayMap;

    .line 179
    .line 180
    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    .line 181
    .line 182
    .line 183
    move/from16 v25, v14

    .line 184
    .line 185
    new-instance v14, Landroidx/collection/ArrayMap;

    .line 186
    .line 187
    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    .line 188
    .line 189
    .line 190
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 191
    .line 192
    .line 193
    move-result v26

    .line 194
    if-eqz v26, :cond_2

    .line 195
    .line 196
    move/from16 v26, v13

    .line 197
    .line 198
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    invoke-virtual {v15, v13}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v27

    .line 206
    if-nez v27, :cond_0

    .line 207
    .line 208
    move/from16 v27, v12

    .line 209
    .line 210
    new-instance v12, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v15, v13, v12}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    goto/16 :goto_21

    .line 221
    .line 222
    :cond_0
    move/from16 v27, v12

    .line 223
    .line 224
    :goto_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    invoke-virtual {v14, v12}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    if-nez v13, :cond_1

    .line 233
    .line 234
    new-instance v13, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v14, v12, v13}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    :cond_1
    move/from16 v13, v26

    .line 243
    .line 244
    move/from16 v12, v27

    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_2
    move/from16 v27, v12

    .line 248
    .line 249
    move/from16 v26, v13

    .line 250
    .line 251
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v2, v15}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v0, v2, v14}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    :goto_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_1e

    .line 270
    .line 271
    const/4 v2, -0x1

    .line 272
    if-eq v3, v2, :cond_1d

    .line 273
    .line 274
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v29

    .line 278
    if-eq v4, v2, :cond_1c

    .line 279
    .line 280
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v12

    .line 284
    long-to-int v12, v12

    .line 285
    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 286
    .line 287
    .line 288
    move-result-object v30

    .line 289
    if-eq v5, v2, :cond_1b

    .line 290
    .line 291
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    sget-object v13, Landroidx/work/Data;->Companion:Landroidx/work/Data$Companion;

    .line 296
    .line 297
    invoke-virtual {v13, v12}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 298
    .line 299
    .line 300
    move-result-object v31

    .line 301
    if-ne v6, v2, :cond_3

    .line 302
    .line 303
    const-wide/16 v32, 0x0

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 307
    .line 308
    .line 309
    move-result-wide v32

    .line 310
    :goto_3
    if-ne v7, v2, :cond_4

    .line 311
    .line 312
    const-wide/16 v34, 0x0

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 316
    .line 317
    .line 318
    move-result-wide v34

    .line 319
    :goto_4
    if-ne v8, v2, :cond_5

    .line 320
    .line 321
    const-wide/16 v36, 0x0

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_5
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v36

    .line 328
    :goto_5
    const/16 v28, 0x0

    .line 329
    .line 330
    if-ne v9, v2, :cond_6

    .line 331
    .line 332
    move/from16 v39, v28

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_6
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 336
    .line 337
    .line 338
    move-result-wide v12

    .line 339
    long-to-int v12, v12

    .line 340
    move/from16 v39, v12

    .line 341
    .line 342
    :goto_6
    if-eq v10, v2, :cond_1a

    .line 343
    .line 344
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v12

    .line 348
    long-to-int v12, v12

    .line 349
    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 350
    .line 351
    .line 352
    move-result-object v40

    .line 353
    if-ne v11, v2, :cond_7

    .line 354
    .line 355
    const-wide/16 v41, 0x0

    .line 356
    .line 357
    :goto_7
    move/from16 v12, v27

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_7
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v12

    .line 364
    move-wide/from16 v41, v12

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :goto_8
    if-ne v12, v2, :cond_8

    .line 368
    .line 369
    const-wide/16 v43, 0x0

    .line 370
    .line 371
    :goto_9
    move/from16 v13, v26

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_8
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 375
    .line 376
    .line 377
    move-result-wide v43

    .line 378
    goto :goto_9

    .line 379
    :goto_a
    if-ne v13, v2, :cond_9

    .line 380
    .line 381
    move/from16 v26, v3

    .line 382
    .line 383
    move/from16 v45, v28

    .line 384
    .line 385
    move v3, v2

    .line 386
    :goto_b
    move/from16 v2, v25

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_9
    move/from16 v26, v3

    .line 390
    .line 391
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 392
    .line 393
    .line 394
    move-result-wide v2

    .line 395
    long-to-int v2, v2

    .line 396
    move/from16 v45, v2

    .line 397
    .line 398
    const/4 v3, -0x1

    .line 399
    goto :goto_b

    .line 400
    :goto_c
    if-ne v2, v3, :cond_a

    .line 401
    .line 402
    move/from16 v25, v4

    .line 403
    .line 404
    move/from16 v46, v28

    .line 405
    .line 406
    move v4, v3

    .line 407
    :goto_d
    move/from16 v3, p0

    .line 408
    .line 409
    goto :goto_e

    .line 410
    :cond_a
    move/from16 v25, v4

    .line 411
    .line 412
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 413
    .line 414
    .line 415
    move-result-wide v3

    .line 416
    long-to-int v3, v3

    .line 417
    move/from16 v46, v3

    .line 418
    .line 419
    const/4 v4, -0x1

    .line 420
    goto :goto_d

    .line 421
    :goto_e
    if-ne v3, v4, :cond_b

    .line 422
    .line 423
    const-wide/16 v47, 0x0

    .line 424
    .line 425
    :goto_f
    move/from16 v27, v2

    .line 426
    .line 427
    move/from16 v2, p1

    .line 428
    .line 429
    goto :goto_10

    .line 430
    :cond_b
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v47

    .line 434
    goto :goto_f

    .line 435
    :goto_10
    if-ne v2, v4, :cond_c

    .line 436
    .line 437
    move/from16 p0, v5

    .line 438
    .line 439
    move/from16 v49, v28

    .line 440
    .line 441
    move v5, v4

    .line 442
    :goto_11
    move/from16 v4, v16

    .line 443
    .line 444
    goto :goto_12

    .line 445
    :cond_c
    move/from16 p0, v5

    .line 446
    .line 447
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 448
    .line 449
    .line 450
    move-result-wide v4

    .line 451
    long-to-int v4, v4

    .line 452
    move/from16 v49, v4

    .line 453
    .line 454
    const/4 v5, -0x1

    .line 455
    goto :goto_11

    .line 456
    :goto_12
    if-eq v4, v5, :cond_19

    .line 457
    .line 458
    move/from16 p1, v6

    .line 459
    .line 460
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 461
    .line 462
    .line 463
    move-result-wide v5

    .line 464
    long-to-int v5, v5

    .line 465
    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 466
    .line 467
    .line 468
    move-result-object v52

    .line 469
    move/from16 v5, v17

    .line 470
    .line 471
    const/4 v6, -0x1

    .line 472
    if-eq v5, v6, :cond_18

    .line 473
    .line 474
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 475
    .line 476
    .line 477
    move-result-object v16

    .line 478
    invoke-static/range {v16 .. v16}, Landroidx/work/impl/model/WorkTypeConverters;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 479
    .line 480
    .line 481
    move-result-object v51

    .line 482
    const/16 v16, 0x1

    .line 483
    .line 484
    move/from16 v17, v2

    .line 485
    .line 486
    move/from16 v2, v18

    .line 487
    .line 488
    if-ne v2, v6, :cond_d

    .line 489
    .line 490
    move/from16 v18, v7

    .line 491
    .line 492
    move/from16 v53, v28

    .line 493
    .line 494
    move v7, v6

    .line 495
    :goto_13
    move/from16 v6, v19

    .line 496
    .line 497
    goto :goto_15

    .line 498
    :cond_d
    move/from16 v18, v7

    .line 499
    .line 500
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 501
    .line 502
    .line 503
    move-result-wide v6

    .line 504
    long-to-int v6, v6

    .line 505
    if-eqz v6, :cond_e

    .line 506
    .line 507
    move/from16 v6, v16

    .line 508
    .line 509
    goto :goto_14

    .line 510
    :cond_e
    move/from16 v6, v28

    .line 511
    .line 512
    :goto_14
    move/from16 v53, v6

    .line 513
    .line 514
    const/4 v7, -0x1

    .line 515
    goto :goto_13

    .line 516
    :goto_15
    if-ne v6, v7, :cond_f

    .line 517
    .line 518
    move/from16 v19, v8

    .line 519
    .line 520
    move/from16 v54, v28

    .line 521
    .line 522
    move v8, v7

    .line 523
    :goto_16
    move/from16 v7, v20

    .line 524
    .line 525
    goto :goto_18

    .line 526
    :cond_f
    move/from16 v19, v8

    .line 527
    .line 528
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 529
    .line 530
    .line 531
    move-result-wide v7

    .line 532
    long-to-int v7, v7

    .line 533
    if-eqz v7, :cond_10

    .line 534
    .line 535
    move/from16 v7, v16

    .line 536
    .line 537
    goto :goto_17

    .line 538
    :cond_10
    move/from16 v7, v28

    .line 539
    .line 540
    :goto_17
    move/from16 v54, v7

    .line 541
    .line 542
    const/4 v8, -0x1

    .line 543
    goto :goto_16

    .line 544
    :goto_18
    if-ne v7, v8, :cond_11

    .line 545
    .line 546
    move/from16 v20, v9

    .line 547
    .line 548
    move/from16 v55, v28

    .line 549
    .line 550
    move v9, v8

    .line 551
    :goto_19
    move/from16 v8, v21

    .line 552
    .line 553
    goto :goto_1b

    .line 554
    :cond_11
    move/from16 v20, v9

    .line 555
    .line 556
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 557
    .line 558
    .line 559
    move-result-wide v8

    .line 560
    long-to-int v8, v8

    .line 561
    if-eqz v8, :cond_12

    .line 562
    .line 563
    move/from16 v8, v16

    .line 564
    .line 565
    goto :goto_1a

    .line 566
    :cond_12
    move/from16 v8, v28

    .line 567
    .line 568
    :goto_1a
    move/from16 v55, v8

    .line 569
    .line 570
    const/4 v9, -0x1

    .line 571
    goto :goto_19

    .line 572
    :goto_1b
    if-ne v8, v9, :cond_13

    .line 573
    .line 574
    move/from16 v21, v10

    .line 575
    .line 576
    move v10, v9

    .line 577
    move/from16 v56, v28

    .line 578
    .line 579
    move/from16 v9, v22

    .line 580
    .line 581
    goto :goto_1c

    .line 582
    :cond_13
    move/from16 v21, v10

    .line 583
    .line 584
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 585
    .line 586
    .line 587
    move-result-wide v9

    .line 588
    long-to-int v9, v9

    .line 589
    if-eqz v9, :cond_14

    .line 590
    .line 591
    move/from16 v28, v16

    .line 592
    .line 593
    :cond_14
    const/4 v10, -0x1

    .line 594
    move/from16 v9, v22

    .line 595
    .line 596
    move/from16 v56, v28

    .line 597
    .line 598
    :goto_1c
    if-ne v9, v10, :cond_15

    .line 599
    .line 600
    const-wide/16 v57, 0x0

    .line 601
    .line 602
    :goto_1d
    move/from16 v16, v2

    .line 603
    .line 604
    move/from16 v2, v23

    .line 605
    .line 606
    goto :goto_1e

    .line 607
    :cond_15
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 608
    .line 609
    .line 610
    move-result-wide v57

    .line 611
    goto :goto_1d

    .line 612
    :goto_1e
    if-ne v2, v10, :cond_16

    .line 613
    .line 614
    const-wide/16 v59, 0x0

    .line 615
    .line 616
    :goto_1f
    move/from16 v23, v2

    .line 617
    .line 618
    move/from16 v2, v24

    .line 619
    .line 620
    goto :goto_20

    .line 621
    :cond_16
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 622
    .line 623
    .line 624
    move-result-wide v22

    .line 625
    move-wide/from16 v59, v22

    .line 626
    .line 627
    goto :goto_1f

    .line 628
    :goto_20
    if-eq v2, v10, :cond_17

    .line 629
    .line 630
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 631
    .line 632
    .line 633
    move-result-object v10

    .line 634
    invoke-static {v10}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 635
    .line 636
    .line 637
    move-result-object v61

    .line 638
    new-instance v50, Landroidx/work/Constraints;

    .line 639
    .line 640
    invoke-direct/range {v50 .. v61}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 641
    .line 642
    .line 643
    move/from16 v24, v2

    .line 644
    .line 645
    move/from16 v10, v26

    .line 646
    .line 647
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    invoke-static {v15, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    check-cast v2, Ljava/util/List;

    .line 656
    .line 657
    move-object/from16 p2, v2

    .line 658
    .line 659
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    invoke-static {v14, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    move-object/from16 v51, v2

    .line 668
    .line 669
    check-cast v51, Ljava/util/List;

    .line 670
    .line 671
    new-instance v28, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 672
    .line 673
    move-object/from16 v38, v50

    .line 674
    .line 675
    move-object/from16 v50, p2

    .line 676
    .line 677
    invoke-direct/range {v28 .. v51}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    .line 678
    .line 679
    .line 680
    move-object/from16 v2, v28

    .line 681
    .line 682
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move/from16 v22, v5

    .line 686
    .line 687
    move/from16 v5, p0

    .line 688
    .line 689
    move/from16 p0, v3

    .line 690
    .line 691
    move v3, v10

    .line 692
    move/from16 v10, v21

    .line 693
    .line 694
    move/from16 v21, v8

    .line 695
    .line 696
    move/from16 v8, v19

    .line 697
    .line 698
    move/from16 v19, v6

    .line 699
    .line 700
    move/from16 v6, p1

    .line 701
    .line 702
    move/from16 p1, v17

    .line 703
    .line 704
    move/from16 v17, v22

    .line 705
    .line 706
    move/from16 v22, v9

    .line 707
    .line 708
    move/from16 v26, v13

    .line 709
    .line 710
    move/from16 v9, v20

    .line 711
    .line 712
    move/from16 v20, v7

    .line 713
    .line 714
    move/from16 v7, v18

    .line 715
    .line 716
    move/from16 v18, v16

    .line 717
    .line 718
    move/from16 v16, v4

    .line 719
    .line 720
    move/from16 v4, v25

    .line 721
    .line 722
    move/from16 v25, v27

    .line 723
    .line 724
    move/from16 v27, v12

    .line 725
    .line 726
    goto/16 :goto_2

    .line 727
    .line 728
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 729
    .line 730
    const-string v2, "Missing value for a NON-NULL column \'content_uri_triggers\', found NULL value instead."

    .line 731
    .line 732
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    throw v0

    .line 736
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 737
    .line 738
    const-string v2, "Missing value for a NON-NULL column \'required_network_request\', found NULL value instead."

    .line 739
    .line 740
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    throw v0

    .line 744
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 745
    .line 746
    const-string v2, "Missing value for a NON-NULL column \'required_network_type\', found NULL value instead."

    .line 747
    .line 748
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    throw v0

    .line 752
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 753
    .line 754
    const-string v2, "Missing value for a NON-NULL column \'backoff_policy\', found NULL value instead."

    .line 755
    .line 756
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    throw v0

    .line 760
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 761
    .line 762
    const-string v2, "Missing value for a NON-NULL column \'output\', found NULL value instead."

    .line 763
    .line 764
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    throw v0

    .line 768
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 769
    .line 770
    const-string v2, "Missing value for a NON-NULL column \'state\', found NULL value instead."

    .line 771
    .line 772
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    throw v0

    .line 776
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 777
    .line 778
    const-string v2, "Missing value for a NON-NULL column \'id\', found NULL value instead."

    .line 779
    .line 780
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :cond_1e
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 785
    .line 786
    .line 787
    return-object v0

    .line 788
    :goto_21
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 789
    .line 790
    .line 791
    throw v0
.end method

.method private static final getWorkInfoPojosLiveData$lambda$1(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 62

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface {v2, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/room/RoomRawQuery;->getBindingFunction()Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v3, "id"

    .line 19
    .line 20
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string v4, "state"

    .line 25
    .line 26
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const-string v5, "output"

    .line 31
    .line 32
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const-string v6, "initial_delay"

    .line 37
    .line 38
    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const-string v7, "interval_duration"

    .line 43
    .line 44
    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const-string v8, "flex_duration"

    .line 49
    .line 50
    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    const-string v9, "run_attempt_count"

    .line 55
    .line 56
    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    const-string v10, "backoff_policy"

    .line 61
    .line 62
    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    const-string v11, "backoff_delay_duration"

    .line 67
    .line 68
    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    const-string v12, "last_enqueue_time"

    .line 73
    .line 74
    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    const-string v13, "period_count"

    .line 79
    .line 80
    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    const-string v14, "generation"

    .line 85
    .line 86
    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    const-string v15, "next_schedule_time_override"

    .line 91
    .line 92
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    move/from16 p0, v15

    .line 97
    .line 98
    const-string v15, "stop_reason"

    .line 99
    .line 100
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    move/from16 p1, v15

    .line 105
    .line 106
    const-string v15, "required_network_type"

    .line 107
    .line 108
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    move/from16 v16, v15

    .line 113
    .line 114
    const-string v15, "required_network_request"

    .line 115
    .line 116
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    move/from16 v17, v15

    .line 121
    .line 122
    const-string v15, "requires_charging"

    .line 123
    .line 124
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    move/from16 v18, v15

    .line 129
    .line 130
    const-string v15, "requires_device_idle"

    .line 131
    .line 132
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    move/from16 v19, v15

    .line 137
    .line 138
    const-string v15, "requires_battery_not_low"

    .line 139
    .line 140
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    move/from16 v20, v15

    .line 145
    .line 146
    const-string v15, "requires_storage_not_low"

    .line 147
    .line 148
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    move/from16 v21, v15

    .line 153
    .line 154
    const-string v15, "trigger_content_update_delay"

    .line 155
    .line 156
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    move/from16 v22, v15

    .line 161
    .line 162
    const-string v15, "trigger_max_content_delay"

    .line 163
    .line 164
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    move/from16 v23, v15

    .line 169
    .line 170
    const-string v15, "content_uri_triggers"

    .line 171
    .line 172
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v15

    .line 176
    move/from16 v24, v15

    .line 177
    .line 178
    new-instance v15, Landroidx/collection/ArrayMap;

    .line 179
    .line 180
    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    .line 181
    .line 182
    .line 183
    move/from16 v25, v14

    .line 184
    .line 185
    new-instance v14, Landroidx/collection/ArrayMap;

    .line 186
    .line 187
    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    .line 188
    .line 189
    .line 190
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 191
    .line 192
    .line 193
    move-result v26

    .line 194
    if-eqz v26, :cond_2

    .line 195
    .line 196
    move/from16 v26, v13

    .line 197
    .line 198
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    invoke-virtual {v15, v13}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v27

    .line 206
    if-nez v27, :cond_0

    .line 207
    .line 208
    move/from16 v27, v12

    .line 209
    .line 210
    new-instance v12, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v15, v13, v12}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    goto/16 :goto_21

    .line 221
    .line 222
    :cond_0
    move/from16 v27, v12

    .line 223
    .line 224
    :goto_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    invoke-virtual {v14, v12}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    if-nez v13, :cond_1

    .line 233
    .line 234
    new-instance v13, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v14, v12, v13}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    :cond_1
    move/from16 v13, v26

    .line 243
    .line 244
    move/from16 v12, v27

    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_2
    move/from16 v27, v12

    .line 248
    .line 249
    move/from16 v26, v13

    .line 250
    .line 251
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v2, v15}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v0, v2, v14}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    :goto_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_1e

    .line 270
    .line 271
    const/4 v2, -0x1

    .line 272
    if-eq v3, v2, :cond_1d

    .line 273
    .line 274
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v29

    .line 278
    if-eq v4, v2, :cond_1c

    .line 279
    .line 280
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v12

    .line 284
    long-to-int v12, v12

    .line 285
    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 286
    .line 287
    .line 288
    move-result-object v30

    .line 289
    if-eq v5, v2, :cond_1b

    .line 290
    .line 291
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    sget-object v13, Landroidx/work/Data;->Companion:Landroidx/work/Data$Companion;

    .line 296
    .line 297
    invoke-virtual {v13, v12}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 298
    .line 299
    .line 300
    move-result-object v31

    .line 301
    if-ne v6, v2, :cond_3

    .line 302
    .line 303
    const-wide/16 v32, 0x0

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 307
    .line 308
    .line 309
    move-result-wide v32

    .line 310
    :goto_3
    if-ne v7, v2, :cond_4

    .line 311
    .line 312
    const-wide/16 v34, 0x0

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 316
    .line 317
    .line 318
    move-result-wide v34

    .line 319
    :goto_4
    if-ne v8, v2, :cond_5

    .line 320
    .line 321
    const-wide/16 v36, 0x0

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_5
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v36

    .line 328
    :goto_5
    const/16 v28, 0x0

    .line 329
    .line 330
    if-ne v9, v2, :cond_6

    .line 331
    .line 332
    move/from16 v39, v28

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_6
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 336
    .line 337
    .line 338
    move-result-wide v12

    .line 339
    long-to-int v12, v12

    .line 340
    move/from16 v39, v12

    .line 341
    .line 342
    :goto_6
    if-eq v10, v2, :cond_1a

    .line 343
    .line 344
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v12

    .line 348
    long-to-int v12, v12

    .line 349
    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 350
    .line 351
    .line 352
    move-result-object v40

    .line 353
    if-ne v11, v2, :cond_7

    .line 354
    .line 355
    const-wide/16 v41, 0x0

    .line 356
    .line 357
    :goto_7
    move/from16 v12, v27

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_7
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v12

    .line 364
    move-wide/from16 v41, v12

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :goto_8
    if-ne v12, v2, :cond_8

    .line 368
    .line 369
    const-wide/16 v43, 0x0

    .line 370
    .line 371
    :goto_9
    move/from16 v13, v26

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_8
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 375
    .line 376
    .line 377
    move-result-wide v43

    .line 378
    goto :goto_9

    .line 379
    :goto_a
    if-ne v13, v2, :cond_9

    .line 380
    .line 381
    move/from16 v26, v3

    .line 382
    .line 383
    move/from16 v45, v28

    .line 384
    .line 385
    move v3, v2

    .line 386
    :goto_b
    move/from16 v2, v25

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_9
    move/from16 v26, v3

    .line 390
    .line 391
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 392
    .line 393
    .line 394
    move-result-wide v2

    .line 395
    long-to-int v2, v2

    .line 396
    move/from16 v45, v2

    .line 397
    .line 398
    const/4 v3, -0x1

    .line 399
    goto :goto_b

    .line 400
    :goto_c
    if-ne v2, v3, :cond_a

    .line 401
    .line 402
    move/from16 v25, v4

    .line 403
    .line 404
    move/from16 v46, v28

    .line 405
    .line 406
    move v4, v3

    .line 407
    :goto_d
    move/from16 v3, p0

    .line 408
    .line 409
    goto :goto_e

    .line 410
    :cond_a
    move/from16 v25, v4

    .line 411
    .line 412
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 413
    .line 414
    .line 415
    move-result-wide v3

    .line 416
    long-to-int v3, v3

    .line 417
    move/from16 v46, v3

    .line 418
    .line 419
    const/4 v4, -0x1

    .line 420
    goto :goto_d

    .line 421
    :goto_e
    if-ne v3, v4, :cond_b

    .line 422
    .line 423
    const-wide/16 v47, 0x0

    .line 424
    .line 425
    :goto_f
    move/from16 v27, v2

    .line 426
    .line 427
    move/from16 v2, p1

    .line 428
    .line 429
    goto :goto_10

    .line 430
    :cond_b
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v47

    .line 434
    goto :goto_f

    .line 435
    :goto_10
    if-ne v2, v4, :cond_c

    .line 436
    .line 437
    move/from16 p0, v5

    .line 438
    .line 439
    move/from16 v49, v28

    .line 440
    .line 441
    move v5, v4

    .line 442
    :goto_11
    move/from16 v4, v16

    .line 443
    .line 444
    goto :goto_12

    .line 445
    :cond_c
    move/from16 p0, v5

    .line 446
    .line 447
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 448
    .line 449
    .line 450
    move-result-wide v4

    .line 451
    long-to-int v4, v4

    .line 452
    move/from16 v49, v4

    .line 453
    .line 454
    const/4 v5, -0x1

    .line 455
    goto :goto_11

    .line 456
    :goto_12
    if-eq v4, v5, :cond_19

    .line 457
    .line 458
    move/from16 p1, v6

    .line 459
    .line 460
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 461
    .line 462
    .line 463
    move-result-wide v5

    .line 464
    long-to-int v5, v5

    .line 465
    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 466
    .line 467
    .line 468
    move-result-object v52

    .line 469
    move/from16 v5, v17

    .line 470
    .line 471
    const/4 v6, -0x1

    .line 472
    if-eq v5, v6, :cond_18

    .line 473
    .line 474
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 475
    .line 476
    .line 477
    move-result-object v16

    .line 478
    invoke-static/range {v16 .. v16}, Landroidx/work/impl/model/WorkTypeConverters;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 479
    .line 480
    .line 481
    move-result-object v51

    .line 482
    const/16 v16, 0x1

    .line 483
    .line 484
    move/from16 v17, v2

    .line 485
    .line 486
    move/from16 v2, v18

    .line 487
    .line 488
    if-ne v2, v6, :cond_d

    .line 489
    .line 490
    move/from16 v18, v7

    .line 491
    .line 492
    move/from16 v53, v28

    .line 493
    .line 494
    move v7, v6

    .line 495
    :goto_13
    move/from16 v6, v19

    .line 496
    .line 497
    goto :goto_15

    .line 498
    :cond_d
    move/from16 v18, v7

    .line 499
    .line 500
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 501
    .line 502
    .line 503
    move-result-wide v6

    .line 504
    long-to-int v6, v6

    .line 505
    if-eqz v6, :cond_e

    .line 506
    .line 507
    move/from16 v6, v16

    .line 508
    .line 509
    goto :goto_14

    .line 510
    :cond_e
    move/from16 v6, v28

    .line 511
    .line 512
    :goto_14
    move/from16 v53, v6

    .line 513
    .line 514
    const/4 v7, -0x1

    .line 515
    goto :goto_13

    .line 516
    :goto_15
    if-ne v6, v7, :cond_f

    .line 517
    .line 518
    move/from16 v19, v8

    .line 519
    .line 520
    move/from16 v54, v28

    .line 521
    .line 522
    move v8, v7

    .line 523
    :goto_16
    move/from16 v7, v20

    .line 524
    .line 525
    goto :goto_18

    .line 526
    :cond_f
    move/from16 v19, v8

    .line 527
    .line 528
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 529
    .line 530
    .line 531
    move-result-wide v7

    .line 532
    long-to-int v7, v7

    .line 533
    if-eqz v7, :cond_10

    .line 534
    .line 535
    move/from16 v7, v16

    .line 536
    .line 537
    goto :goto_17

    .line 538
    :cond_10
    move/from16 v7, v28

    .line 539
    .line 540
    :goto_17
    move/from16 v54, v7

    .line 541
    .line 542
    const/4 v8, -0x1

    .line 543
    goto :goto_16

    .line 544
    :goto_18
    if-ne v7, v8, :cond_11

    .line 545
    .line 546
    move/from16 v20, v9

    .line 547
    .line 548
    move/from16 v55, v28

    .line 549
    .line 550
    move v9, v8

    .line 551
    :goto_19
    move/from16 v8, v21

    .line 552
    .line 553
    goto :goto_1b

    .line 554
    :cond_11
    move/from16 v20, v9

    .line 555
    .line 556
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 557
    .line 558
    .line 559
    move-result-wide v8

    .line 560
    long-to-int v8, v8

    .line 561
    if-eqz v8, :cond_12

    .line 562
    .line 563
    move/from16 v8, v16

    .line 564
    .line 565
    goto :goto_1a

    .line 566
    :cond_12
    move/from16 v8, v28

    .line 567
    .line 568
    :goto_1a
    move/from16 v55, v8

    .line 569
    .line 570
    const/4 v9, -0x1

    .line 571
    goto :goto_19

    .line 572
    :goto_1b
    if-ne v8, v9, :cond_13

    .line 573
    .line 574
    move/from16 v21, v10

    .line 575
    .line 576
    move v10, v9

    .line 577
    move/from16 v56, v28

    .line 578
    .line 579
    move/from16 v9, v22

    .line 580
    .line 581
    goto :goto_1c

    .line 582
    :cond_13
    move/from16 v21, v10

    .line 583
    .line 584
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 585
    .line 586
    .line 587
    move-result-wide v9

    .line 588
    long-to-int v9, v9

    .line 589
    if-eqz v9, :cond_14

    .line 590
    .line 591
    move/from16 v28, v16

    .line 592
    .line 593
    :cond_14
    const/4 v10, -0x1

    .line 594
    move/from16 v9, v22

    .line 595
    .line 596
    move/from16 v56, v28

    .line 597
    .line 598
    :goto_1c
    if-ne v9, v10, :cond_15

    .line 599
    .line 600
    const-wide/16 v57, 0x0

    .line 601
    .line 602
    :goto_1d
    move/from16 v16, v2

    .line 603
    .line 604
    move/from16 v2, v23

    .line 605
    .line 606
    goto :goto_1e

    .line 607
    :cond_15
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 608
    .line 609
    .line 610
    move-result-wide v57

    .line 611
    goto :goto_1d

    .line 612
    :goto_1e
    if-ne v2, v10, :cond_16

    .line 613
    .line 614
    const-wide/16 v59, 0x0

    .line 615
    .line 616
    :goto_1f
    move/from16 v23, v2

    .line 617
    .line 618
    move/from16 v2, v24

    .line 619
    .line 620
    goto :goto_20

    .line 621
    :cond_16
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 622
    .line 623
    .line 624
    move-result-wide v22

    .line 625
    move-wide/from16 v59, v22

    .line 626
    .line 627
    goto :goto_1f

    .line 628
    :goto_20
    if-eq v2, v10, :cond_17

    .line 629
    .line 630
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 631
    .line 632
    .line 633
    move-result-object v10

    .line 634
    invoke-static {v10}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 635
    .line 636
    .line 637
    move-result-object v61

    .line 638
    new-instance v50, Landroidx/work/Constraints;

    .line 639
    .line 640
    invoke-direct/range {v50 .. v61}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 641
    .line 642
    .line 643
    move/from16 v24, v2

    .line 644
    .line 645
    move/from16 v10, v26

    .line 646
    .line 647
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    invoke-static {v15, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    check-cast v2, Ljava/util/List;

    .line 656
    .line 657
    move-object/from16 p2, v2

    .line 658
    .line 659
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    invoke-static {v14, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    move-object/from16 v51, v2

    .line 668
    .line 669
    check-cast v51, Ljava/util/List;

    .line 670
    .line 671
    new-instance v28, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 672
    .line 673
    move-object/from16 v38, v50

    .line 674
    .line 675
    move-object/from16 v50, p2

    .line 676
    .line 677
    invoke-direct/range {v28 .. v51}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    .line 678
    .line 679
    .line 680
    move-object/from16 v2, v28

    .line 681
    .line 682
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move/from16 v22, v5

    .line 686
    .line 687
    move/from16 v5, p0

    .line 688
    .line 689
    move/from16 p0, v3

    .line 690
    .line 691
    move v3, v10

    .line 692
    move/from16 v10, v21

    .line 693
    .line 694
    move/from16 v21, v8

    .line 695
    .line 696
    move/from16 v8, v19

    .line 697
    .line 698
    move/from16 v19, v6

    .line 699
    .line 700
    move/from16 v6, p1

    .line 701
    .line 702
    move/from16 p1, v17

    .line 703
    .line 704
    move/from16 v17, v22

    .line 705
    .line 706
    move/from16 v22, v9

    .line 707
    .line 708
    move/from16 v26, v13

    .line 709
    .line 710
    move/from16 v9, v20

    .line 711
    .line 712
    move/from16 v20, v7

    .line 713
    .line 714
    move/from16 v7, v18

    .line 715
    .line 716
    move/from16 v18, v16

    .line 717
    .line 718
    move/from16 v16, v4

    .line 719
    .line 720
    move/from16 v4, v25

    .line 721
    .line 722
    move/from16 v25, v27

    .line 723
    .line 724
    move/from16 v27, v12

    .line 725
    .line 726
    goto/16 :goto_2

    .line 727
    .line 728
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 729
    .line 730
    const-string v2, "Missing value for a NON-NULL column \'content_uri_triggers\', found NULL value instead."

    .line 731
    .line 732
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    throw v0

    .line 736
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 737
    .line 738
    const-string v2, "Missing value for a NON-NULL column \'required_network_request\', found NULL value instead."

    .line 739
    .line 740
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    throw v0

    .line 744
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 745
    .line 746
    const-string v2, "Missing value for a NON-NULL column \'required_network_type\', found NULL value instead."

    .line 747
    .line 748
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    throw v0

    .line 752
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 753
    .line 754
    const-string v2, "Missing value for a NON-NULL column \'backoff_policy\', found NULL value instead."

    .line 755
    .line 756
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    throw v0

    .line 760
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 761
    .line 762
    const-string v2, "Missing value for a NON-NULL column \'output\', found NULL value instead."

    .line 763
    .line 764
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    throw v0

    .line 768
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 769
    .line 770
    const-string v2, "Missing value for a NON-NULL column \'state\', found NULL value instead."

    .line 771
    .line 772
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    throw v0

    .line 776
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 777
    .line 778
    const-string v2, "Missing value for a NON-NULL column \'id\', found NULL value instead."

    .line 779
    .line 780
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :cond_1e
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 785
    .line 786
    .line 787
    return-object v0

    .line 788
    :goto_21
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 789
    .line 790
    .line 791
    throw v0
.end method


# virtual methods
.method public getWorkInfoPojos(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .locals 3
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery$Companion;->copyFrom(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/room/RoomSQLiteQuery;->toRoomRawQuery()Landroidx/room/RoomRawQuery;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/room/RoomRawQuery;->getSql()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    new-instance v2, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwwwwww;

    .line 18
    .line 19
    invoke-direct {v2, v0, p1, p0}, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {v1, p1, v0, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/List;

    .line 29
    .line 30
    return-object p1
.end method

.method public getWorkInfoPojosFlow(Landroidx/sqlite/db/SupportSQLiteQuery;)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery$Companion;->copyFrom(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/room/RoomSQLiteQuery;->toRoomRawQuery()Landroidx/room/RoomRawQuery;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/room/RoomRawQuery;->getSql()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    const-string v2, "WorkProgress"

    .line 18
    .line 19
    const-string v3, "WorkSpec"

    .line 20
    .line 21
    const-string v4, "WorkTag"

    .line 22
    .line 23
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwwwww;

    .line 28
    .line 29
    invoke-direct {v3, v0, p1, p0}, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwwwww;-><init>(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-static {v1, p1, v2, v3}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public getWorkInfoPojosLiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;
    .locals 5
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/room/RoomSQLiteQuery;->Companion:Landroidx/room/RoomSQLiteQuery$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery$Companion;->copyFrom(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/room/RoomSQLiteQuery;->toRoomRawQuery()Landroidx/room/RoomRawQuery;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/room/RoomRawQuery;->getSql()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "WorkProgress"

    .line 22
    .line 23
    const-string v3, "WorkSpec"

    .line 24
    .line 25
    const-string v4, "WorkTag"

    .line 26
    .line 27
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwwww;

    .line 32
    .line 33
    invoke-direct {v3, v0, p1, p0}, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwwww;-><init>(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {v1, v2, p1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method
