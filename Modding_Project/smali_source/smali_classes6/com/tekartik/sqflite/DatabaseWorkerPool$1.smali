.class Lcom/tekartik/sqflite/DatabaseWorkerPool$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tekartik/sqflite/DatabaseDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tekartik/sqflite/DatabaseWorkerPool$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseWorkerPool;Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;


# direct methods
.method public constructor <init>(Lcom/tekartik/sqflite/DatabaseWorkerPool;Lcom/tekartik/sqflite/Database;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tekartik/sqflite/DatabaseWorkerPool$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tekartik/sqflite/DatabaseWorkerPool$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorkerPool$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tekartik/sqflite/Database;->Www()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorkerPool$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    iget v0, v0, Lcom/tekartik/sqflite/Database;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    return v0
.end method
