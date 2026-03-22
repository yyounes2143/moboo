.class public final synthetic Lcom/facebook/Wwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:J

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:J

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest$Callback;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest$Callback;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/facebook/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/facebook/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest$Callback;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/facebook/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/facebook/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphRequest$Callback;JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
