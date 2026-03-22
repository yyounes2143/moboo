.class public final synthetic Lcom/google/firebase/messaging/Wwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/components/Qualified;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/Qualified;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/components/Qualified;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/components/Qualified;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
