.class final Lcom/tekartik/sqflite/DatabaseTask;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tekartik/sqflite/DatabaseDelegate;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tekartik/sqflite/DatabaseTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseDelegate;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tekartik/sqflite/DatabaseTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseDelegate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/tekartik/sqflite/DatabaseDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseDelegate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/tekartik/sqflite/DatabaseDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method
