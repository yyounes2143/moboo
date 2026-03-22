.class public final synthetic Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/sqlite/SQLiteConnection;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/model/RawWorkInfoDao_Impl;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/sqlite/SQLiteConnection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/model/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/sqlite/SQLiteConnection;

    .line 4
    .line 5
    check-cast p1, Landroidx/collection/ArrayMap;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
