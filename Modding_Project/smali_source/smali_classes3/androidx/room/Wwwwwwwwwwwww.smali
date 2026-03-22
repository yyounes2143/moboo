.class public final synthetic Landroidx/room/Wwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/sqlite/SQLiteStatement;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/room/TriggerBasedInvalidationTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/sqlite/SQLiteStatement;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
