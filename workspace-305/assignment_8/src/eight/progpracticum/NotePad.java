package eight.progpracticum;

import java.awt.EventQueue;

public final class NotePad {
	
	private NotePad() {
		throw new IllegalStateException();
	}
	
	public static void main(final String... aRgs) {
        EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new NotePadGUI();
            }
        });
    }

}
