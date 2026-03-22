.class public final synthetic Landroidx/work/impl/model/Kkkkkkkkkkkkk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:J

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/model/Kkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/work/impl/model/Kkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/Kkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/work/impl/model/Kkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->Kkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
