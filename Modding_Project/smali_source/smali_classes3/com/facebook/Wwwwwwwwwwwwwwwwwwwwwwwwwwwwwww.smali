.class public final synthetic Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessTokenManager;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessToken;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessTokenManager$RefreshResult;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/AccessTokenManager$RefreshResult;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/AccessTokenManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessTokenManager$RefreshResult;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessToken;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessTokenManager;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphRequestBatch;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessTokenManager$RefreshResult;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessToken;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessTokenManager;

    .line 16
    .line 17
    move-object v8, p1

    .line 18
    invoke-static/range {v0 .. v8}, Lcom/facebook/AccessTokenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessTokenManager$RefreshResult;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/AccessTokenManager;Lcom/facebook/GraphRequestBatch;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
