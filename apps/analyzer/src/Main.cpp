/*
 ==============================================================================

 This file is part of the JUCETICE project - Copyright 2007 by Lucio Asnaghi.

 JUCETICE is based around the JUCE library - "Jules' Utility Class Extensions"
 Copyright 2007 by Julian Storer.

 ------------------------------------------------------------------------------

 JUCE and JUCETICE can be redistributed and/or modified under the terms of
 the GNU Lesser General Public License, as published by the Free Software
 Foundation; either version 2 of the License, or (at your option) any later
 version.

 JUCE and JUCETICE are distributed in the hope that they will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU Lesser General Public License
 along with JUCE and JUCETICE; if not, visit www.gnu.org/licenses or write to
 Free Software Foundation, Inc., 59 Temple Place, Suite 330,
 Boston, MA 02111-1307 USA

 ==============================================================================
*/

#ifndef XANALYZER_VST_PLUGIN

//==============================================================================
/** We are building a Standalone plugin so we need to include the main wrapper
    class and filter window specifically designed for standalone mode
*/

#include "wrapper/Standalone/juce_AudioFilterStreamer.cpp"
#include "wrapper/Standalone/juce_StandaloneFilterWindow.cpp"
#include "wrapper/Standalone/juce_StandaloneFilterApplication.cpp"

START_JUCE_APPLICATION (StandaloneFilterApplication)

#else

//==============================================================================
/** We are building a VST plugin so we need to include the main wrapper class
*/

#include "wrapper/VST/juce_VST_Wrapper.cpp"

#endif
