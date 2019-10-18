.class public Lcom/miui/aod/doze/DozeMachine$Service$Delegate;
.super Ljava/lang/Object;
.source "DozeMachine.java"

# interfaces
.implements Lcom/miui/aod/doze/DozeMachine$Service;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/doze/DozeMachine$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation


# instance fields
.field private final mDelegate:Lcom/miui/aod/doze/DozeMachine$Service;


# direct methods
.method public constructor <init>(Lcom/miui/aod/doze/DozeMachine$Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/miui/aod/doze/DozeMachine$Service;

    return-void
.end method


# virtual methods
.method public fingerprintPressed(ZLjava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/miui/aod/doze/DozeMachine$Service;

    invoke-interface {p0, p1, p2}, Lcom/miui/aod/doze/DozeMachine$Service;->fingerprintPressed(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public finish()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/miui/aod/doze/DozeMachine$Service;

    invoke-interface {p0}, Lcom/miui/aod/doze/DozeMachine$Service;->finish()V

    return-void
.end method

.method public requestState(Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/miui/aod/doze/DozeMachine$Service;

    invoke-interface {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/miui/aod/doze/DozeMachine$Service;

    invoke-interface {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/miui/aod/doze/DozeMachine$Service;

    invoke-interface {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service;->setDozeScreenState(I)V

    return-void
.end method
