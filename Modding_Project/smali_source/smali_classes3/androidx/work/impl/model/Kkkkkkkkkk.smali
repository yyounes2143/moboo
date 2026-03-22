.class public final synthetic Landroidx/work/impl/model/Kkkkkkkkkk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:J

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/model/Kkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/work/impl/model/Kkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/work/impl/model/Kkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/Kkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/work/impl/model/Kkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    iget-object v3, p0, Landroidx/work/impl/model/Kkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->Wwwwwwwwwwwwwwww(Ljava/lang/String;JLjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
