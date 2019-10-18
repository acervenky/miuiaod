.class public interface abstract Lcom/miui/aod/DozeHost$Callback;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/DozeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fireAodState(ZLjava/lang/String;)V
.end method

.method public abstract notifyKeycodeGoto()V
.end method

.method public abstract onAodAnimate(Z)V
.end method

.method public abstract onDozingRequested(Z)V
.end method

.method public abstract onExtendPulse()V
.end method

.method public abstract onFingerprintPressed(Z)V
.end method

.method public abstract onPowerSaveChanged(Z)V
.end method
