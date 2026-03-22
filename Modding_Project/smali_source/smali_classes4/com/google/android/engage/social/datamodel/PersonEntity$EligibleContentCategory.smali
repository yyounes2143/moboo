.class public interface abstract annotation Lcom/google/android/engage/social/datamodel/PersonEntity$EligibleContentCategory;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/social/datamodel/PersonEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "EligibleContentCategory"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final TYPE_DATING:I = 0x11

.field public static final TYPE_HEALTH_AND_FITNESS:I = 0xe

.field public static final TYPE_HOME_AND_AUTO:I = 0x9

.field public static final TYPE_SPORTS:I = 0x2
