.class public Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tekartik/sqflite/operation/OperationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tekartik/sqflite/operation/BatchOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchOperationResult"
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tekartik/sqflite/operation/BatchOperation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
